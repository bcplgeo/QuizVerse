
# ============================================================
# QuizVerse Question Bank Audit
# Read-only structural audit of seven Dart question-bank files.
# Supports questionText values on separate lines.
# Does not modify production files.
# ============================================================

import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parent
DATA_DIR = ROOT / "lib" / "data"

QUESTION_FILES = [
    "environment_questions.dart",
    "generalKnowledge_questions.dart",
    "geography_questions.dart",
    "history_questions.dart",
    "science_questions.dart",
    "sports_questions.dart",
    "technology_questions.dart",
]

EXPECTED_PER_CATEGORY = 125


def decode_dart_string(value):
    """Decode common Dart single-quoted string escapes for auditing."""
    value = value.replace("\\'", "'")
    value = value.replace('\\"', '"')
    value = value.replace("\\n", "\n")
    value = value.replace("\\r", "\r")
    value = value.replace("\\t", "\t")
    value = value.replace("\\\\", "\\")
    return value


def extract_questions(source):
    """Split source into Question(...) blocks."""
    starts = list(re.finditer(r"\bQuestion\s*\(", source))
    blocks = []

    for index, match in enumerate(starts):
        start = match.start()
        end = (
            starts[index + 1].start()
            if index + 1 < len(starts)
            else len(source)
        )
        blocks.append(source[start:end])

    return blocks



def extract_named_string(block, field_name):
    """Extract single- or double-quoted Dart strings across newlines."""
    pattern = (
        rf"\b{re.escape(field_name)}\s*:\s*"
        r"""(['"])((?:\\.|(?!\1)[^\\])*)\1"""
    )
    match = re.search(pattern, block, re.DOTALL)

    if not match:
        return None

    return decode_dart_string(match.group(2))


def extract_options(block):
    """Extract single-quoted values from the options list."""
    match = re.search(
        r"\boptions\s*:\s*\[(.*?)\]",
        block,
        re.DOTALL,
    )

    if not match:
        return None

    values = re.findall(
        r"'((?:\\.|[^'\\])*)'",
        match.group(1),
        re.DOTALL,
    )

    return [decode_dart_string(value) for value in values]


def audit_file(filename):
    path = DATA_DIR / filename

    if not path.exists():
        return 0, [], [f"{filename}: FILE NOT FOUND at {path}"]

    source = path.read_text(encoding="utf-8")
    blocks = extract_questions(source)
    question_texts = []
    issues = []

    for number, block in enumerate(blocks, start=1):
        question = extract_named_string(block, "questionText")

        if question is None:
            issues.append(
                f"{filename} #{number}: questionText not parsed"
            )
            question = f"[UNPARSED QUESTION #{number}]"

        question_texts.append((filename, number, question))

        options = extract_options(block)

        if options is None:
            issues.append(
                f"{filename} #{number}: options list not parsed"
            )
            options = []

        if len(options) < 2:
            issues.append(
                f"{filename} #{number}: fewer than 2 options"
            )

        if any(not option.strip() for option in options):
            issues.append(
                f"{filename} #{number}: empty option"
            )

        normalized_options = [
            re.sub(r"\s+", " ", option).strip().casefold()
            for option in options
        ]

        if len(set(normalized_options)) != len(normalized_options):
            issues.append(
                f"{filename} #{number}: duplicate options — "
                f"{question!r} — {options!r}"
            )

        answer_match = re.search(
            r"\bcorrectAnswerIndex\s*:\s*(-?\d+)",
            block,
        )

        if not answer_match:
            issues.append(
                f"{filename} #{number}: correctAnswerIndex not parsed"
            )
        else:
            answer_index = int(answer_match.group(1))

            if not 0 <= answer_index < len(options):
                issues.append(
                    f"{filename} #{number}: answer index "
                    f"{answer_index} outside options range "
                    f"(0–{len(options) - 1})"
                )

    return len(blocks), question_texts, issues


def main():
    print("=" * 65)
    print("QUIZVERSE QUESTION BANK AUDIT")
    print("=" * 65)

    total = 0
    all_questions = []
    all_issues = []

    for filename in QUESTION_FILES:
        count, questions, issues = audit_file(filename)
        total += count
        all_questions.extend(questions)
        all_issues.extend(issues)

        status = (
            "OK"
            if count == EXPECTED_PER_CATEGORY
            else "CHECK"
        )

        print(f"{filename}: {count} questions [{status}]")

        if count != EXPECTED_PER_CATEGORY:
            all_issues.append(
                f"{filename}: expected {EXPECTED_PER_CATEGORY}, "
                f"found {count}"
            )

    print("-" * 65)
    print(f"TOTAL QUESTIONS: {total}")
    print(
        "EXPECTED TOTAL: "
        f"{EXPECTED_PER_CATEGORY * len(QUESTION_FILES)}"
    )

    duplicates = defaultdict(list)

    for filename, number, question in all_questions:
        normalized = re.sub(
            r"\s+", " ", question
        ).strip().casefold()

        duplicates[normalized].append(
            (filename, number, question)
        )

    print("\n" + "=" * 65)
    print("DUPLICATE QUESTION TEXT")
    print("=" * 65)

    duplicate_groups = 0

    for entries in duplicates.values():
        if len(entries) > 1:
            duplicate_groups += 1
            print(f"\nQuestion: {entries[0][2]!r}")

            for filename, number, _ in entries:
                print(f"  {filename} #{number}")

    if duplicate_groups == 0:
        print("No exact normalized duplicate question text found.")

    print("\n" + "=" * 65)
    print("STRUCTURAL ISSUES")
    print("=" * 65)

    if all_issues:
        for issue in all_issues:
            print(f"- {issue}")
    else:
        print("No structural issues detected by these checks.")

    print("\n" + "=" * 65)
    print("AUDIT COMPLETE")
    print("This script checks structure, not factual correctness.")
    print("=" * 65)


if __name__ == "__main__":
    main()

# ============================================================
# End of QuizVerse Question Bank Audit
# ============================================================
