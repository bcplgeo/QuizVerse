// =============================================================
// QUIZ HISTORY SCREEN
// Purpose: Display locally stored completed and Game Over sessions.
// =============================================================

import 'package:flutter/material.dart';

import '../models/quiz_history_entry.dart';
import '../services/storage_service.dart';
import '../utils/category_theme.dart';

class QuizHistoryScreen extends StatefulWidget {
  const QuizHistoryScreen({super.key});

  @override
  State<QuizHistoryScreen> createState() => _QuizHistoryScreenState();
}

class _QuizHistoryScreenState extends State<QuizHistoryScreen> {
  late Future<List<QuizHistoryEntry>> _historyFuture;

  @override
  void initState() {
    super.initState();
    _historyFuture = StorageService.loadQuizHistory();
  }

  String _formatDate(DateTime date) {
    final local = date.toLocal();
    final day = local.day.toString().padLeft(2, '0');
    final month = local.month.toString().padLeft(2, '0');
    final year = local.year.toString();
    final hour = (local.hour % 12 == 0 ? 12 : local.hour % 12)
        .toString().padLeft(2, '0');
    final minute = local.minute.toString().padLeft(2, '0');
    final period = local.hour >= 12 ? 'PM' : 'AM';
    return '$day/$month/$year  $hour:$minute $period';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1020),
      appBar: AppBar(
        title: const Text('Quiz History'),
        backgroundColor: const Color(0xFF0B1020),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder<List<QuizHistoryEntry>>(
        future: _historyFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(color: Color(0xFFB69CFF)),
            );
          }
          if (snapshot.hasError) {
            return const Center(
              child: Text('Unable to load quiz history.',
                  style: TextStyle(color: Colors.white70)),
            );
          }

          final history = snapshot.data ?? [];
          if (history.isEmpty) {
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(28),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.history_rounded,
                        size: 54, color: Color(0xFF7F8BA3)),
                    SizedBox(height: 14),
                    Text('No quiz history yet',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w800)),
                    SizedBox(height: 7),
                    Text('Your finished quiz sessions will appear here.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Color(0xFF9BA7BD))),
                  ],
                ),
              ),
            );
          }

          return ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 24),
            itemCount: history.length,
            separatorBuilder: (_, __) => const SizedBox(height: 10),
            itemBuilder: (context, index) {
              final entry = history[index];
              final accent = getCategoryColor(entry.category);
              final completed = entry.status == 'completed';

              return Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF151D32),
                  borderRadius: BorderRadius.circular(17),
                  border: Border.all(color: accent.withOpacity(0.28)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(getCategoryIcon(entry.category),
                            color: accent, size: 20),
                        const SizedBox(width: 9),
                        Expanded(
                          child: Text(entry.category,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800,
                                  fontSize: 14)),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 5),
                          decoration: BoxDecoration(
                            color: (completed ? const Color(0xFF3FAF83) : const Color(0xFFE18B55))
                                .withOpacity(0.15),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Text(
                            completed ? 'COMPLETED' : 'GAME OVER',
                            style: TextStyle(
                              color: completed
                                  ? const Color(0xFF72D6A8)
                                  : const Color(0xFFFFB17D),
                              fontSize: 8,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 7),
                    Text(_formatDate(entry.finishedAt),
                        style: const TextStyle(
                            color: Color(0xFF9BA7BD), fontSize: 10)),
                    const SizedBox(height: 13),
                    Row(
                      children: [
                        _HistoryMetric(label: 'SCORE', value: '${entry.score}'),
                        _HistoryMetric(
                            label: 'QUESTIONS', value: '${entry.questionsAnswered}'),
                        _HistoryMetric(
                            label: 'CORRECT', value: '${entry.correctAnswers}'),
                        _HistoryMetric(
                            label: 'WRONG', value: '${entry.incorrectAnswers}'),
                        _HistoryMetric(
                            label: 'ACCURACY',
                            value: '${entry.accuracy.toStringAsFixed(0)}%'),
                      ],
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class _HistoryMetric extends StatelessWidget {
  final String label;
  final String value;

  const _HistoryMetric({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(value,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w800)),
          const SizedBox(height: 3),
          Text(label,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                  color: Color(0xFF8794AA),
                  fontSize: 7,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.2)),
        ],
      ),
    );
  }
}
