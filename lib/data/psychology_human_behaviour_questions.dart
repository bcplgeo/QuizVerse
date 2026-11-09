import '../models/question.dart';

// =========================================
// PSYCHOLOGY & HUMAN BEHAVIOUR QUESTIONS
// =========================================

final List<Question> psychologyHumanBehaviourQuestions = [

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What does psychology primarily study?",
    options: [
      "Only mental illness",
      "Behaviour and mental processes",
      "Only the brain's anatomy",
      "Human history",
    ],
    correctAnswerIndex: 1,
    explanation: "Psychology is the scientific study of behaviour and mental processes, including perception, cognition, emotion, motivation and social interaction.",
    whyItMatters: "A broad definition prevents psychology from being reduced to only mental health or personality testing.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which research method involves observing behaviour in a natural setting without manipulating variables?",
    options: [
      "Laboratory experiment",
      "Naturalistic observation",
      "Random assignment",
      "Meta-analysis",
    ],
    correctAnswerIndex: 1,
    explanation: "Naturalistic observation records behaviour in its usual environment without the researcher deliberately changing the situation.",
    whyItMatters: "It can reveal how people behave in everyday contexts, although it offers limited control over confounding variables.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "In an experiment, what is the independent variable?",
    options: [
      "The outcome being measured",
      "The variable deliberately changed or manipulated",
      "A variable that is never recorded",
      "The final statistical conclusion",
    ],
    correctAnswerIndex: 1,
    explanation: "The independent variable is the factor manipulated by the researcher to examine its effect on an outcome.",
    whyItMatters: "Identifying variables correctly is essential for interpreting experimental findings and causal claims.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the dependent variable in an experiment?",
    options: [
      "The factor manipulated by the researcher",
      "The outcome measured by the researcher",
      "The participant's age in every study",
      "A variable that must remain hidden",
    ],
    correctAnswerIndex: 1,
    explanation: "The dependent variable is the measured outcome expected to change in response to the independent variable.",
    whyItMatters: "Clear outcome measurement makes research questions testable and results interpretable.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Why is random assignment used in controlled experiments?",
    options: [
      "To guarantee every participant has identical experiences",
      "To reduce systematic pre-existing differences between groups",
      "To ensure the hypothesis is supported",
      "To remove the need for a control group",
    ],
    correctAnswerIndex: 1,
    explanation: "Random assignment allocates participants to study conditions by chance, helping distribute participant characteristics across groups and reduce selection bias.",
    whyItMatters: "It strengthens causal inference by making alternative explanations less likely, although it does not eliminate every source of bias.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is a placebo effect?",
    options: [
      "A change caused solely by a drug's active ingredient",
      "A response influenced by expectations or the treatment context rather than the treatment's specific active component",
      "A type of memory loss",
      "A researcher's deliberate data error",
    ],
    correctAnswerIndex: 1,
    explanation: "A placebo effect is a change in symptoms or experience associated with expectations, conditioning or the treatment context, even when no active treatment ingredient is responsible.",
    whyItMatters: "It matters in clinical trials because researchers must separate treatment-specific effects from contextual and expectancy effects.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What does correlation between two variables mean?",
    options: [
      "One variable definitely causes the other",
      "The variables vary together in a statistical relationship",
      "The variables must be identical",
      "The relationship cannot be measured",
    ],
    correctAnswerIndex: 1,
    explanation: "Correlation describes the degree and direction of association between variables. By itself, it does not establish that one variable causes the other.",
    whyItMatters: "This distinction prevents misleading conclusions from observational studies and headlines.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is confirmation bias?",
    options: [
      "The tendency to seek or interpret information in ways that support existing beliefs",
      "The ability to remember every detail",
      "A complete absence of prior expectations",
      "A method for randomising participants",
    ],
    correctAnswerIndex: 0,
    explanation: "Confirmation bias is the tendency to favour information that supports existing beliefs or expectations and to discount conflicting evidence.",
    whyItMatters: "Recognising it improves critical thinking, decision-making and evaluation of claims.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the availability heuristic?",
    options: [
      "Judging likelihood by how easily examples come to mind",
      "Always choosing the mathematically safest option",
      "Remembering events in chronological order",
      "Avoiding decisions until all information is known",
    ],
    correctAnswerIndex: 0,
    explanation: "The availability heuristic occurs when people estimate frequency or probability partly by how easily examples can be recalled.",
    whyItMatters: "It can make vivid or recent events seem more common than they actually are.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the anchoring effect?",
    options: [
      "Relying heavily on an initial number or piece of information when making a later judgement",
      "Forgetting the first information received",
      "Changing opinions randomly",
      "Making decisions only after expert consultation",
    ],
    correctAnswerIndex: 0,
    explanation: "Anchoring occurs when an initial value or reference point influences subsequent estimates, even when that starting point is arbitrary or weakly relevant.",
    whyItMatters: "It affects negotiations, pricing, forecasting and everyday judgement.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is cognitive dissonance?",
    options: [
      "The discomfort that can arise from holding inconsistent beliefs or acting against one's beliefs",
      "A complete loss of short-term memory",
      "The inability to recognise faces",
      "A type of sensory adaptation",
    ],
    correctAnswerIndex: 0,
    explanation: "Cognitive dissonance is psychological discomfort associated with inconsistency among beliefs, attitudes or behaviour. People may reduce it by changing attitudes, behaviour or interpretations.",
    whyItMatters: "It helps explain rationalisation, attitude change and how people respond to decisions that conflict with their values.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the fundamental attribution error?",
    options: [
      "Overemphasising personal characteristics and underestimating situational influences when explaining others' behaviour",
      "Assuming all behaviour is caused by weather",
      "Attributing one's own success to luck every time",
      "Confusing memory with perception",
    ],
    correctAnswerIndex: 0,
    explanation: "The fundamental attribution error describes a tendency, especially in some cultural contexts, to overemphasise dispositional explanations for other people's behaviour and underweight situational factors.",
    whyItMatters: "It encourages more balanced judgements by prompting consideration of context before labelling people.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the self-serving bias?",
    options: [
      "Attributing successes to oneself and failures to external factors",
      "Taking equal responsibility for every event",
      "Assuming other people always act selfishly",
      "Avoiding all feedback",
    ],
    correctAnswerIndex: 0,
    explanation: "Self-serving bias is a tendency to explain positive outcomes through internal qualities and negative outcomes through external circumstances.",
    whyItMatters: "It can protect self-esteem but may also obstruct learning from mistakes.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the Dunning–Kruger effect commonly used to describe?",
    options: [
      "A tendency for people with limited skill in a domain to overestimate their competence in that domain",
      "A universal rule that experts are always overconfident",
      "The decline of memory with age",
      "A method for measuring intelligence",
    ],
    correctAnswerIndex: 0,
    explanation: "The term describes a proposed metacognitive pattern in which people with low ability in a domain may lack the insight needed to recognise their limitations. The size and generality of the effect are debated.",
    whyItMatters: "The concept is a reminder to calibrate confidence against evidence and objective feedback rather than treating confidence as proof of competence.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the primacy effect in memory and impression formation?",
    options: [
      "Later information is always remembered best",
      "Earlier information can have a disproportionate influence",
      "Only emotional information is remembered",
      "Information is remembered only when repeated aloud",
    ],
    correctAnswerIndex: 1,
    explanation: "The primacy effect is the tendency for information presented early in a sequence to have a stronger influence on memory or judgement than some later information.",
    whyItMatters: "It helps explain why first impressions and the order of information can influence evaluation.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the recency effect?",
    options: [
      "A tendency to remember or give greater weight to information encountered most recently",
      "A tendency to forget recent events first",
      "A preference for familiar people",
      "A reduction in attention after sleep",
    ],
    correctAnswerIndex: 0,
    explanation: "The recency effect is improved recall or greater influence of items encountered near the end of a sequence, particularly when they remain accessible in short-term memory.",
    whyItMatters: "It shows that presentation order can shape recall and judgement.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which type of memory is used to hold and manipulate information briefly while performing a task?",
    options: [
      "Procedural memory",
      "Working memory",
      "Episodic memory",
      "Autobiographical memory",
    ],
    correctAnswerIndex: 1,
    explanation: "Working memory is a limited-capacity system that temporarily maintains and manipulates information for tasks such as mental arithmetic, reasoning and comprehension.",
    whyItMatters: "It is central to learning and complex thinking, and can be overloaded by excessive simultaneous demands.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is classical conditioning?",
    options: [
      "Learning through association between stimuli",
      "Learning only by watching others",
      "Learning through conscious reasoning alone",
      "Learning by genetic inheritance",
    ],
    correctAnswerIndex: 0,
    explanation: "Classical conditioning is a form of associative learning in which a previously neutral stimulus comes to elicit a response after being paired with a stimulus that naturally produces that response.",
    whyItMatters: "It helps explain learned emotional responses, preferences and some behavioural patterns.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is operant conditioning?",
    options: [
      "Learning through the consequences of behaviour",
      "Learning by pairing two unrelated memories",
      "Learning that occurs only during sleep",
      "Learning through inherited reflexes",
    ],
    correctAnswerIndex: 0,
    explanation: "Operant conditioning describes how consequences such as reinforcement and punishment influence the likelihood of behaviour occurring again.",
    whyItMatters: "It is widely applied in education, training and behaviour-change programmes.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "In operant conditioning, what is positive reinforcement?",
    options: [
      "Adding a desirable consequence to increase a behaviour",
      "Removing a desirable consequence to reduce a behaviour",
      "Adding an unpleasant consequence to reduce a behaviour",
      "Removing an unpleasant consequence to increase a behaviour",
    ],
    correctAnswerIndex: 0,
    explanation: "Positive reinforcement means presenting a consequence that increases the future likelihood of a behaviour. 'Positive' means adding a stimulus, not necessarily that the consequence is morally good.",
    whyItMatters: "Correctly distinguishing reinforcement from punishment is important when designing effective learning environments.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is negative reinforcement?",
    options: [
      "Punishing someone by taking something away",
      "Removing an aversive stimulus to increase a behaviour",
      "Adding a reward to increase a behaviour",
      "Ignoring a behaviour until it disappears",
    ],
    correctAnswerIndex: 1,
    explanation: "Negative reinforcement increases a behaviour by removing or preventing an unpleasant stimulus after that behaviour.",
    whyItMatters: "It is often confused with punishment, but reinforcement always increases the behaviour it follows.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is observational learning?",
    options: [
      "Learning by watching and imitating others",
      "Learning only through direct rewards",
      "Learning through reflexes without experience",
      "Learning by repeating a word silently",
    ],
    correctAnswerIndex: 0,
    explanation: "Observational learning occurs when a person acquires information or behaviour by observing models, including the consequences those models experience.",
    whyItMatters: "It explains how skills, habits and social behaviours can spread without each person having to learn through direct trial and error.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is intrinsic motivation?",
    options: [
      "Doing an activity because it is inherently interesting or satisfying",
      "Doing an activity only to receive money",
      "Doing an activity only to avoid punishment",
      "Doing an activity because someone is watching",
    ],
    correctAnswerIndex: 0,
    explanation: "Intrinsic motivation comes from interest, enjoyment or personal satisfaction inherent in the activity, rather than being driven solely by external rewards.",
    whyItMatters: "It is relevant to sustained learning, creativity and engagement.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is extrinsic motivation?",
    options: [
      "Engaging in an activity for an external outcome such as a reward or avoiding a penalty",
      "Engaging only because the task is enjoyable",
      "Acting without any goal",
      "A reflex that cannot be influenced",
    ],
    correctAnswerIndex: 0,
    explanation: "Extrinsic motivation involves performing an activity to obtain a separable outcome, such as money, recognition, grades or avoiding a penalty.",
    whyItMatters: "Understanding it helps educators and managers design incentives while considering their effects on interest and autonomy.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "According to Maslow's hierarchy, which category is commonly placed at the base of the pyramid?",
    options: [
      "Esteem needs",
      "Physiological needs",
      "Self-actualisation",
      "Belongingness needs",
    ],
    correctAnswerIndex: 1,
    explanation: "In the traditional presentation of Maslow's hierarchy, physiological needs such as food, water and sleep form the base. The hierarchy is a theoretical model, not a universal fixed sequence established for every person.",
    whyItMatters: "It offers one framework for discussing how basic needs may influence motivation and behaviour.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is emotional intelligence generally understood to involve?",
    options: [
      "Recognising, understanding and managing emotions in oneself and relating effectively to others' emotions",
      "Suppressing every emotion",
      "Predicting every person's decisions accurately",
      "Having a high IQ by definition",
    ],
    correctAnswerIndex: 0,
    explanation: "Emotional intelligence commonly refers to abilities related to perceiving, understanding, using and regulating emotions. Different models define and measure it differently.",
    whyItMatters: "Emotion-related skills can support communication, conflict management and interpersonal effectiveness.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is empathy?",
    options: [
      "Understanding or sharing another person's emotional perspective",
      "Agreeing with every opinion",
      "Feeling responsible for every problem",
      "Avoiding people who disagree",
    ],
    correctAnswerIndex: 0,
    explanation: "Empathy involves understanding another person's perspective or emotional state and, in some definitions, sharing an affective response. It does not require agreeing with them.",
    whyItMatters: "Empathy supports communication, caregiving and constructive conflict resolution.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "How does empathy differ from sympathy?",
    options: [
      "Empathy involves understanding or sharing another's perspective; sympathy involves concern or sorrow for their situation",
      "They are exact synonyms in every context",
      "Sympathy requires identical life experience",
      "Empathy means giving advice without listening",
    ],
    correctAnswerIndex: 0,
    explanation: "Empathy focuses on understanding or sharing another person's experience, whereas sympathy generally expresses concern, compassion or sorrow for that person.",
    whyItMatters: "The distinction helps people respond supportively without assuming they fully know another person's experience.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the bystander effect?",
    options: [
      "People may be less likely to intervene in an emergency when other bystanders are present",
      "People always help faster in a crowd",
      "People become unable to see in groups",
      "People imitate every action they observe",
    ],
    correctAnswerIndex: 0,
    explanation: "The bystander effect describes findings that the presence of other observers can reduce an individual's likelihood of helping, with diffusion of responsibility being one proposed mechanism.",
    whyItMatters: "Knowing this effect can encourage people to assign responsibility clearly and ask specific individuals for help in emergencies.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is groupthink?",
    options: [
      "A decision-making pattern in which pressure for group agreement discourages critical evaluation",
      "A method for generating random ideas",
      "A group in which everyone has different goals",
      "A formal intelligence test",
    ],
    correctAnswerIndex: 0,
    explanation: "Groupthink refers to a group decision-making failure in which the desire for harmony or unanimity can suppress dissent, alternatives and critical scrutiny.",
    whyItMatters: "Structured disagreement and independent evaluation can improve the quality of important group decisions.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is social conformity?",
    options: [
      "Changing behaviour or expressed views to align with group norms or expectations",
      "Refusing to notice other people",
      "Remembering information more accurately in isolation",
      "Following only written laws",
    ],
    correctAnswerIndex: 0,
    explanation: "Conformity is a change in behaviour or expressed judgement in response to real or perceived group pressure.",
    whyItMatters: "It helps explain social influence in workplaces, communities and peer groups.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is obedience in social psychology?",
    options: [
      "Changing behaviour in response to a direct command from an authority figure",
      "Matching the clothing of friends",
      "Learning through reward schedules",
      "Remembering a childhood event",
    ],
    correctAnswerIndex: 0,
    explanation: "Obedience involves complying with a direct instruction or order, typically from someone perceived to hold authority.",
    whyItMatters: "Research on obedience highlights the importance of authority, responsibility and ethical safeguards.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the mere-exposure effect?",
    options: [
      "Repeated exposure to a stimulus can increase familiarity and often liking",
      "A single exposure always creates dislike",
      "People prefer only unfamiliar objects",
      "Exposure eliminates all bias",
    ],
    correctAnswerIndex: 0,
    explanation: "The mere-exposure effect is the tendency for repeated exposure to a stimulus to increase familiarity and, under many conditions, positive evaluation.",
    whyItMatters: "It helps explain how familiarity can influence preferences for people, brands, music and ideas.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the halo effect?",
    options: [
      "A positive impression in one area influences judgements in other areas",
      "A person's mood changes with weather",
      "A memory becomes more accurate over time",
      "A group becomes less cohesive",
    ],
    correctAnswerIndex: 0,
    explanation: "The halo effect occurs when an overall impression or a salient trait influences evaluations of other, potentially unrelated characteristics.",
    whyItMatters: "It can distort hiring, performance reviews, product evaluation and first impressions.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the placebo-controlled double-blind design intended to reduce?",
    options: [
      "The influence of participant and researcher expectations on outcomes",
      "The number of participants needed to zero",
      "The need for informed consent",
      "All random variation in data",
    ],
    correctAnswerIndex: 0,
    explanation: "In a double-blind design, participants and relevant researchers or assessors do not know who receives the active treatment or control condition. A placebo control helps separate treatment-specific effects from expectations.",
    whyItMatters: "Blinding reduces certain expectation and measurement biases, strengthening the credibility of trial results.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What does the term 'neuroplasticity' mean?",
    options: [
      "The brain's capacity to change its structure or function with experience",
      "The brain's inability to recover after learning",
      "The replacement of all neurons every day",
      "A fixed personality trait",
    ],
    correctAnswerIndex: 0,
    explanation: "Neuroplasticity is the nervous system's capacity to change its connections, organisation or function in response to development, learning, experience or injury.",
    whyItMatters: "It underlies learning and adaptation and informs rehabilitation after some forms of brain injury.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which brain structure is especially important for forming many new episodic memories?",
    options: [
      "Hippocampus",
      "Cerebellum",
      "Medulla",
      "Occipital cortex",
    ],
    correctAnswerIndex: 0,
    explanation: "The hippocampus and connected medial temporal lobe structures are essential for forming and consolidating many types of new declarative memory, including episodic memories.",
    whyItMatters: "It helps explain why damage to the hippocampal system can severely impair the formation of new memories.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which brain region is strongly involved in processing threat and emotional salience?",
    options: [
      "Amygdala",
      "Primary visual cortex",
      "Spinal cord",
      "Pineal gland",
    ],
    correctAnswerIndex: 0,
    explanation: "The amygdala is a set of structures involved in processing emotional significance, including threat-related cues, and in coordinating relevant learning and responses.",
    whyItMatters: "It contributes to understanding fear learning and emotional responses, while emotion itself depends on wider brain networks.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the main role of the prefrontal cortex in human behaviour?",
    options: [
      "Supporting executive functions such as planning, inhibition and decision-making",
      "Controlling the heartbeat directly",
      "Detecting light in the retina",
      "Producing red blood cells",
    ],
    correctAnswerIndex: 0,
    explanation: "The prefrontal cortex contributes to executive functions, including planning, working memory, flexible thinking, impulse control and decision-making.",
    whyItMatters: "These functions are important for goal-directed behaviour and regulating responses to immediate impulses.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the circadian rhythm?",
    options: [
      "An internal biological cycle of approximately 24 hours",
      "A cycle that lasts exactly one year",
      "A reflex triggered only by pain",
      "A permanent change in personality",
    ],
    correctAnswerIndex: 0,
    explanation: "Circadian rhythms are endogenous biological cycles with a period of roughly 24 hours, synchronised by environmental cues such as the light-dark cycle.",
    whyItMatters: "They regulate sleep-wake timing and influence hormone release, alertness and metabolism.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which hormone is strongly associated with regulating the sleep-wake cycle in response to darkness?",
    options: [
      "Melatonin",
      "Insulin",
      "Adrenaline",
      "Testosterone",
    ],
    correctAnswerIndex: 0,
    explanation: "Melatonin is a hormone produced primarily by the pineal gland. Its secretion typically rises in darkness and helps signal biological night; it is not simply a sleep switch.",
    whyItMatters: "Understanding melatonin helps explain how light exposure and biological timing influence sleep.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the stress response commonly associated with activation of the sympathetic nervous system?",
    options: [
      "Rest-and-digest response",
      "Fight-or-flight response",
      "Deep sleep response",
      "Long-term memory consolidation",
    ],
    correctAnswerIndex: 1,
    explanation: "The sympathetic nervous system helps mobilise the body during challenge or threat, increasing functions such as heart rate and readiness for action.",
    whyItMatters: "It explains many immediate physical changes during acute stress and danger.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between acute stress and chronic stress?",
    options: [
      "Acute stress is short-term; chronic stress is persistent or repeated over a longer period",
      "Acute stress is always harmful; chronic stress is always helpful",
      "They are identical terms",
      "Chronic stress lasts only a few seconds",
    ],
    correctAnswerIndex: 0,
    explanation: "Acute stress is a short-lived response to an immediate demand. Chronic stress involves prolonged or repeatedly activated stressors and can have broader effects on health and functioning.",
    whyItMatters: "Distinguishing duration and context helps guide appropriate stress-management and health interventions.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is resilience in psychology?",
    options: [
      "The capacity to adapt or recover in the face of adversity",
      "Never experiencing negative emotions",
      "Avoiding every difficult situation",
      "Having no need for social support",
    ],
    correctAnswerIndex: 0,
    explanation: "Resilience refers to processes and capacities that support adaptation or recovery when facing adversity. It is not the absence of distress and can be supported by relationships and resources.",
    whyItMatters: "This perspective encourages practical support and adaptive coping rather than treating resilience as an unchanging personal trait.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is a growth mindset?",
    options: [
      "The belief that abilities can develop through learning, effort and effective strategies",
      "The belief that intelligence is completely fixed",
      "The belief that success never requires practice",
      "The belief that mistakes should always be hidden",
    ],
    correctAnswerIndex: 0,
    explanation: "A growth mindset is the belief that abilities can be developed through learning, practice, feedback and effective strategies, although outcomes also depend on resources and context.",
    whyItMatters: "It can encourage persistence and constructive responses to setbacks when paired with realistic strategies.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is learned helplessness?",
    options: [
      "A pattern in which repeated exposure to uncontrollable negative events can reduce attempts to change later outcomes",
      "A skill acquired by watching a teacher",
      "A temporary increase in motivation after success",
      "A type of sensory memory",
    ],
    correctAnswerIndex: 0,
    explanation: "Learned helplessness describes reduced attempts to escape or control adverse situations after experience with events perceived as uncontrollable. Modern research recognises important complexities and individual differences.",
    whyItMatters: "It helps researchers examine how perceived control and expectations can influence motivation and coping.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between a habit and a deliberate decision?",
    options: [
      "A habit is more automatically triggered by cues; a deliberate decision involves more conscious evaluation",
      "A habit always takes longer",
      "A deliberate decision cannot become a habit",
      "Habits never involve learning",
    ],
    correctAnswerIndex: 0,
    explanation: "Habits are learned responses that can be triggered relatively automatically by recurring contexts or cues. Deliberate decisions generally involve more conscious consideration, although the two systems interact.",
    whyItMatters: "Understanding habit formation helps explain routines and supports practical behaviour-change strategies.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is cognitive behavioural therapy (CBT) broadly designed to do?",
    options: [
      "Help people identify and work with unhelpful patterns of thinking and behaviour",
      "Erase all memories of difficult events",
      "Guarantee a person never feels anxious",
      "Replace every medical treatment",
    ],
    correctAnswerIndex: 0,
    explanation: "Cognitive behavioural therapy is a structured psychological treatment that helps people examine relationships among thoughts, emotions and behaviours and practise more helpful responses.",
    whyItMatters: "CBT is an evidence-based approach used for several mental health difficulties, though suitability and outcomes vary by person and condition.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the sunk cost fallacy?",
    options: [
      "Continuing an action mainly because time, money or effort has already been invested",
      "Choosing the option with the lowest future cost",
      "Changing a plan when new evidence appears",
      "Ignoring all previous decisions",
    ],
    correctAnswerIndex: 0,
    explanation: "The sunk cost fallacy occurs when past investments that cannot be recovered influence a decision about whether to continue, even though only future costs and benefits should determine the choice.",
    whyItMatters: "Recognising sunk costs supports better decisions in projects, careers, purchases and business strategy.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the peak-end rule?",
    options: [
      "People's retrospective evaluations are often strongly influenced by the most intense moment and the ending of an experience",
      "People remember every moment equally",
      "People judge an experience only by its duration",
      "People always prefer the most recent experience",
    ],
    correctAnswerIndex: 0,
    explanation: "The peak-end rule describes a tendency for retrospective evaluations of an experience to be disproportionately influenced by its most intense point and how it ended, rather than by a simple average of every moment.",
    whyItMatters: "It helps explain why a memorable high point or final interaction can shape how people later evaluate an event or service.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the spotlight effect?",
    options: [
      "Believing others notice our appearance or actions more than they actually do",
      "Feeling watched because of bright lights",
      "Remembering only positive events",
      "Avoiding attention in every situation",
    ],
    correctAnswerIndex: 0,
    explanation: "The spotlight effect is the tendency to overestimate how much other people notice our appearance, mistakes or behaviour.",
    whyItMatters: "It can help explain social self-consciousness and why minor awkward moments often feel more significant to us than they are to observers.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the false-consensus effect?",
    options: [
      "Assuming that other people share our opinions and behaviours more than they actually do",
      "Believing nobody agrees with us",
      "Thinking every group has identical values",
      "Changing an opinion whenever a majority disagrees",
    ],
    correctAnswerIndex: 0,
    explanation: "The false-consensus effect is the tendency to overestimate how widely our own beliefs, preferences and behaviours are shared by others.",
    whyItMatters: "Recognising it can reduce overconfidence when interpreting public opinion, customers or colleagues.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the planning fallacy?",
    options: [
      "Underestimating the time, costs or risks needed to complete a future task",
      "Planning every task with excessive detail",
      "Assuming all projects will fail",
      "Avoiding deadlines entirely",
    ],
    correctAnswerIndex: 0,
    explanation: "The planning fallacy describes a tendency to underestimate the time, costs or risks of future tasks, even when similar past tasks took longer.",
    whyItMatters: "It is relevant to project management, budgeting and personal scheduling; using reference-class data can improve estimates.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is loss aversion?",
    options: [
      "The tendency for losses to feel more psychologically significant than equivalent gains",
      "The belief that every risk should be avoided",
      "A preference for losing small amounts often",
      "The inability to recognise rewards",
    ],
    correctAnswerIndex: 0,
    explanation: "Loss aversion is a feature of prospect theory: for many decisions, a loss of a given amount tends to have a stronger psychological impact than a comparable gain.",
    whyItMatters: "It influences pricing, investment choices, negotiations and responses to change.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the endowment effect?",
    options: [
      "Valuing something more highly simply because we own it",
      "Preferring objects that are new",
      "Giving away possessions without hesitation",
      "Choosing products only by price",
    ],
    correctAnswerIndex: 0,
    explanation: "The endowment effect is the tendency for people to assign greater value to an item once they own it than they would have assigned before owning it.",
    whyItMatters: "It helps explain reluctance to sell, exchange or give up possessions and can affect market behaviour.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is status quo bias?",
    options: [
      "A preference for keeping the current state or arrangement",
      "A preference for changing every routine",
      "A tendency to copy celebrities",
      "A failure to remember past decisions",
    ],
    correctAnswerIndex: 0,
    explanation: "Status quo bias is a preference for maintaining an existing arrangement, sometimes even when alternatives may offer better outcomes.",
    whyItMatters: "It can influence organisational change, subscription choices, public policy and personal decisions.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the framing effect?",
    options: [
      "Different presentations of equivalent information can lead to different choices",
      "People always ignore numerical information",
      "A decision changes only when the facts change",
      "A memory is stored in a visual frame",
    ],
    correctAnswerIndex: 0,
    explanation: "The framing effect occurs when the wording or context used to present equivalent options changes how people evaluate them.",
    whyItMatters: "It highlights why transparent, balanced communication matters in healthcare, policy, marketing and risk communication.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the representativeness heuristic?",
    options: [
      "Judging probability by how much something resembles a typical example or stereotype",
      "Estimating probability only from large datasets",
      "Choosing the most recent option",
      "Remembering events through repetition",
    ],
    correctAnswerIndex: 0,
    explanation: "The representativeness heuristic involves judging likelihood by similarity to a mental prototype, sometimes neglecting base rates and statistical information.",
    whyItMatters: "It can lead to errors when a vivid stereotype is mistaken for reliable probability evidence.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the base-rate fallacy?",
    options: [
      "Ignoring general statistical prevalence when judging a specific case",
      "Using population statistics in every decision",
      "Assuming rare events never occur",
      "Confusing averages with totals",
    ],
    correctAnswerIndex: 0,
    explanation: "The base-rate fallacy occurs when people underuse relevant background frequencies while focusing on case-specific details.",
    whyItMatters: "Considering base rates alongside individual evidence improves diagnostic reasoning, forecasting and risk assessment.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is hindsight bias?",
    options: [
      "Seeing an outcome as having been more predictable after it has occurred",
      "Forgetting an event immediately",
      "Predicting the future accurately every time",
      "Remembering only the first detail",
    ],
    correctAnswerIndex: 0,
    explanation: "Hindsight bias is the tendency to view an event, after learning its outcome, as having been more predictable than it actually was beforehand.",
    whyItMatters: "It can distort post-project reviews and make people unfairly judge decisions using information that was unavailable at the time.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the sunk-cost fallacy?",
    options: [
      "Continuing an action mainly because resources have already been spent and cannot be recovered",
      "Choosing an option based only on future benefits",
      "Reducing investment when evidence changes",
      "Comparing alternatives objectively",
    ],
    correctAnswerIndex: 0,
    explanation: "The sunk-cost fallacy occurs when irrecoverable past investments influence a decision about future action, rather than focusing on prospective costs and benefits.",
    whyItMatters: "It is important in project continuation, business investment and personal commitments.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the peak-end rule?",
    options: [
      "Retrospective evaluations are often strongly influenced by the most intense moment and the ending",
      "People remember every moment equally",
      "People judge experiences only by duration",
      "The beginning always determines satisfaction",
    ],
    correctAnswerIndex: 0,
    explanation: "The peak-end rule describes a tendency for memory-based evaluations of an experience to be influenced disproportionately by its emotional peak and ending.",
    whyItMatters: "It has implications for service design, user experience and how people remember events.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is semantic memory?",
    options: [
      "Memory for facts, concepts and general knowledge",
      "Memory for personal life episodes only",
      "Memory for motor skills",
      "Memory for sensory input lasting milliseconds",
    ],
    correctAnswerIndex: 0,
    explanation: "Semantic memory is long-term memory for general knowledge, meanings, concepts and facts, rather than the specific context in which they were learned.",
    whyItMatters: "It supports language, reasoning and the use of accumulated knowledge.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is episodic memory?",
    options: [
      "Memory for personally experienced events and their contexts",
      "Memory for word meanings only",
      "Memory for physical skills",
      "A reflexive response to sound",
    ],
    correctAnswerIndex: 0,
    explanation: "Episodic memory involves recollection of personally experienced events, often including information about when and where they occurred.",
    whyItMatters: "It contributes to autobiographical identity and the ability to mentally revisit past experiences.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is procedural memory?",
    options: [
      "Memory for learned skills and procedures",
      "Memory for dates and definitions",
      "Memory for emotional faces only",
      "A temporary sensory trace",
    ],
    correctAnswerIndex: 0,
    explanation: "Procedural memory supports learned skills and actions, such as riding a bicycle or performing a familiar motor sequence.",
    whyItMatters: "It explains why some skills can remain fluent even when a person cannot describe every step verbally.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the misinformation effect?",
    options: [
      "Later misleading information can alter a person's memory of an earlier event",
      "All memories become more accurate with age",
      "People cannot remember witnessed events",
      "A memory disappears whenever a question is asked",
    ],
    correctAnswerIndex: 0,
    explanation: "The misinformation effect occurs when misleading information introduced after an event influences how that event is later remembered or reported.",
    whyItMatters: "It is important in eyewitness interviewing, investigations and the design of unbiased questions.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is source-monitoring error?",
    options: [
      "Remembering information but misidentifying where it came from",
      "Forgetting the information entirely",
      "Learning a skill without practice",
      "Confusing short-term and long-term goals",
    ],
    correctAnswerIndex: 0,
    explanation: "A source-monitoring error occurs when a person recalls information but incorrectly attributes its origin, such as confusing something read with something personally experienced.",
    whyItMatters: "It matters when evaluating rumours, online information, eyewitness accounts and confidence in recollection.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the spacing effect in learning?",
    options: [
      "Learning is often better retained when practice is distributed over time",
      "All study should happen in one long session",
      "Practice is useful only immediately before a test",
      "Repeating material without breaks always improves memory most",
    ],
    correctAnswerIndex: 0,
    explanation: "The spacing effect is the finding that distributing learning sessions over time often improves long-term retention compared with massed practice.",
    whyItMatters: "It supports revision schedules that revisit material at increasing intervals rather than relying only on cramming.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is retrieval practice?",
    options: [
      "Strengthening learning by actively recalling information",
      "Reading the same page without testing recall",
      "Highlighting every sentence",
      "Copying notes without thinking",
    ],
    correctAnswerIndex: 0,
    explanation: "Retrieval practice involves actively bringing information to mind, for example through self-testing, rather than only reviewing it passively.",
    whyItMatters: "It is a well-supported learning strategy that helps reveal knowledge gaps and improve later recall.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is metacognition?",
    options: [
      "Thinking about and monitoring one's own thinking and learning",
      "Learning only through imitation",
      "A type of sensory perception",
      "A permanent emotional state",
    ],
    correctAnswerIndex: 0,
    explanation: "Metacognition refers to awareness and regulation of one's own cognitive processes, including planning, monitoring comprehension and evaluating learning strategies.",
    whyItMatters: "It helps learners select effective strategies and recognise when they do not yet understand a topic.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is selective attention?",
    options: [
      "Focusing on some information while filtering out other competing information",
      "Paying equal attention to every stimulus",
      "Remembering all sensory input",
      "Avoiding concentration deliberately",
    ],
    correctAnswerIndex: 0,
    explanation: "Selective attention is the process of prioritising certain information for further processing while other information receives less attention.",
    whyItMatters: "It is essential for managing complex environments, but also explains why important details can be missed.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is inattentional blindness?",
    options: [
      "Failing to notice a visible but unexpected object because attention is engaged elsewhere",
      "Losing vision in one eye",
      "Forgetting a familiar person's name",
      "Seeing an object that is not present",
    ],
    correctAnswerIndex: 0,
    explanation: "Inattentional blindness occurs when a person fails to notice an unexpected visible stimulus because attention is focused on another task or object.",
    whyItMatters: "It shows why eyewitnesses, drivers and professionals can miss events even when their eyes are open and functioning.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is change blindness?",
    options: [
      "Failing to detect a change in a visual scene, especially when the change is not directly attended to",
      "An inability to see colours",
      "A rapid improvement in visual memory",
      "A condition in which objects physically change shape",
    ],
    correctAnswerIndex: 0,
    explanation: "Change blindness is the failure to notice changes in a visual scene, particularly when interruptions or distractions disrupt the comparison between views.",
    whyItMatters: "It demonstrates the limits of visual awareness and has implications for interface design and eyewitness reliability.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the cocktail party effect?",
    options: [
      "The ability to focus on one conversation while filtering other sounds, yet notice personally relevant information such as one's name",
      "A preference for loud music",
      "Difficulty understanding speech in silence",
      "Remembering every voice in a room",
    ],
    correctAnswerIndex: 0,
    explanation: "The cocktail party effect describes selective auditory attention: people can follow one conversation amid background speech while sometimes detecting salient information from unattended channels.",
    whyItMatters: "It illustrates how attention can be selective without completely blocking all unattended information.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between sensation and perception?",
    options: [
      "Sensation detects physical stimuli; perception organises and interprets sensory information",
      "Sensation is memory; perception is emotion",
      "They are identical processes",
      "Perception occurs only when asleep",
    ],
    correctAnswerIndex: 0,
    explanation: "Sensation involves detecting physical energy through sensory receptors, while perception involves organising and interpreting that information.",
    whyItMatters: "The distinction helps explain why the same stimulus can be interpreted differently by different people or in different contexts.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is top-down processing in perception?",
    options: [
      "Using prior knowledge, expectations and context to interpret sensory information",
      "Processing only raw sensory input without context",
      "A signal travelling from the feet to the brain",
      "A method for measuring reaction time",
    ],
    correctAnswerIndex: 0,
    explanation: "Top-down processing uses expectations, knowledge and context to shape how incoming sensory information is interpreted.",
    whyItMatters: "It explains how context can help us recognise ambiguous information, but can also contribute to perceptual bias.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is bottom-up processing?",
    options: [
      "Building perception from incoming sensory details",
      "Using expectations alone to identify an object",
      "Ignoring sensory information",
      "Making decisions based only on memory",
    ],
    correctAnswerIndex: 0,
    explanation: "Bottom-up processing begins with sensory input and builds toward a perceptual interpretation, using features such as edges, colour, pitch or texture.",
    whyItMatters: "It complements top-down processing and helps explain how perception combines data with prior knowledge.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the placebo response in pain research an example of?",
    options: [
      "How expectation and context can influence subjective experience",
      "Proof that pain is imaginary",
      "Evidence that all treatments are equally effective",
      "A failure of the nervous system",
    ],
    correctAnswerIndex: 0,
    explanation: "Expectations, learning and the treatment context can alter pain experience and related brain processes. This does not mean pain is imaginary or that placebo effects replace effective treatment.",
    whyItMatters: "It shows why subjective symptoms and treatment context need careful measurement in clinical research.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the James–Lange theory of emotion broadly proposing?",
    options: [
      "Emotion is experienced partly as the perception of bodily changes triggered by a stimulus",
      "Emotions always occur before any bodily response",
      "Emotions are entirely learned from language",
      "Every emotion has the same physical pattern",
    ],
    correctAnswerIndex: 0,
    explanation: "The James–Lange theory proposes that emotional experience arises in part from perceiving physiological responses to an emotion-provoking event.",
    whyItMatters: "Comparing theories of emotion helps explain the complex relationship between bodily arousal, interpretation and conscious feeling.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the Schachter–Singer two-factor theory of emotion?",
    options: [
      "Emotion involves physiological arousal and a cognitive interpretation of that arousal",
      "Emotion is determined only by facial expression",
      "Emotion occurs without bodily processes",
      "Each emotion has one unique hormone",
    ],
    correctAnswerIndex: 0,
    explanation: "The two-factor theory proposes that emotion depends on physiological arousal together with a cognitive label or interpretation of the situation.",
    whyItMatters: "It highlights how context and interpretation can shape the emotional meaning assigned to bodily sensations.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is emotional regulation?",
    options: [
      "Processes used to influence which emotions a person has, when they have them and how they experience or express them",
      "The elimination of all emotional responses",
      "A method for controlling another person's feelings",
      "A measure of intelligence",
    ],
    correctAnswerIndex: 0,
    explanation: "Emotion regulation includes strategies that influence the onset, intensity, duration or expression of emotional responses.",
    whyItMatters: "Flexible regulation can support wellbeing and relationships; no single strategy is best in every context.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is cognitive reappraisal?",
    options: [
      "Changing how a situation is interpreted in order to alter its emotional impact",
      "Avoiding all thoughts about a situation",
      "Expressing every feeling immediately",
      "Suppressing facial movement only",
    ],
    correctAnswerIndex: 0,
    explanation: "Cognitive reappraisal involves changing the meaning assigned to a situation, which can alter the emotional response it produces.",
    whyItMatters: "It is a commonly studied emotion-regulation strategy and can be useful when a situation allows alternative interpretations.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the Big Five model of personality?",
    options: [
      "A framework describing personality across five broad trait dimensions",
      "A test that identifies five fixed personality types",
      "A theory that all people have the same personality",
      "A model based only on intelligence",
    ],
    correctAnswerIndex: 0,
    explanation: "The Big Five model describes personality using openness to experience, conscientiousness, extraversion, agreeableness and neuroticism (sometimes framed as low emotional stability).",
    whyItMatters: "It provides a widely used dimensional framework for personality research rather than placing people into a small set of types.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which Big Five trait is most closely associated with organisation, dependability and self-discipline?",
    options: [
      "Openness",
      "Conscientiousness",
      "Extraversion",
      "Agreeableness",
    ],
    correctAnswerIndex: 1,
    explanation: "Conscientiousness is associated with traits such as organisation, dependability, persistence and self-discipline.",
    whyItMatters: "It is useful in personality research and can be relevant to understanding work habits and goal pursuit.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "Which Big Five trait includes sociability, assertiveness and a tendency to seek stimulation?",
    options: [
      "Neuroticism",
      "Agreeableness",
      "Extraversion",
      "Openness",
    ],
    correctAnswerIndex: 2,
    explanation: "Extraversion describes a broad dimension involving sociability, assertiveness, positive emotionality and stimulation-seeking.",
    whyItMatters: "Thinking dimensionally avoids treating introversion and extraversion as rigid categories.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "In personality psychology, what does neuroticism generally describe?",
    options: [
      "A tendency toward frequent or intense negative emotional experiences",
      "A preference for complex ideas",
      "A high level of sociability",
      "A tendency to cooperate with others",
    ],
    correctAnswerIndex: 0,
    explanation: "Neuroticism is a Big Five dimension associated with emotional instability and a greater tendency to experience emotions such as anxiety, sadness or irritability.",
    whyItMatters: "It is a trait dimension, not a diagnosis, and should not be used to label someone with a mental disorder.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between a personality trait and a temporary state?",
    options: [
      "A trait is a relatively enduring tendency; a state is a temporary condition",
      "A state lasts forever; a trait lasts minutes",
      "Traits are always inherited and states are always learned",
      "There is no meaningful difference",
    ],
    correctAnswerIndex: 0,
    explanation: "A personality trait describes a relatively stable pattern of thinking, feeling or behaving, whereas a state refers to a temporary condition that can change with circumstances.",
    whyItMatters: "The distinction prevents temporary moods or reactions from being mistaken for someone's enduring personality.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is attachment theory concerned with?",
    options: [
      "How early relationships and caregiving experiences relate to patterns of emotional bonding",
      "How people form visual memories",
      "How muscles learn coordinated movement",
      "How groups choose leaders",
    ],
    correctAnswerIndex: 0,
    explanation: "Attachment theory examines how bonds with caregivers and significant others develop and how expectations about availability and support can influence relationships.",
    whyItMatters: "It provides a framework for studying close relationships, while recognising that attachment patterns are not fixed labels or destiny.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is secure attachment generally associated with in childhood?",
    options: [
      "Using a caregiver as a source of comfort and a base for exploration",
      "Never seeking comfort from caregivers",
      "Avoiding all exploration",
      "Showing no response to separation or reunion",
    ],
    correctAnswerIndex: 0,
    explanation: "In classic attachment research, securely attached children generally use a caregiver as a secure base for exploration and seek comfort on reunion after stress.",
    whyItMatters: "It illustrates how responsive caregiving can support exploration and emotional security, without implying that one observation defines a child's future.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between introversion and shyness?",
    options: [
      "Introversion concerns preference for lower-stimulation settings; shyness involves discomfort or apprehension in social situations",
      "They are exactly the same trait",
      "Introversion always means social fear",
      "Shyness always means preferring solitude",
    ],
    correctAnswerIndex: 0,
    explanation: "Introversion is commonly associated with preferring less stimulating environments or smaller amounts of social interaction, while shyness involves social inhibition or apprehension. A person can be introverted without being shy.",
    whyItMatters: "The distinction reduces inaccurate assumptions about people who are quieter or less socially outgoing.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is stereotype threat?",
    options: [
      "Concern about confirming a negative stereotype about one's group can impair performance in a relevant situation",
      "A person deliberately spreading a rumour",
      "A method for measuring personality",
      "A fear of unfamiliar technology",
    ],
    correctAnswerIndex: 0,
    explanation: "Stereotype threat refers to the situational pressure people may experience when they fear confirming a negative stereotype about a group they belong to. Effects vary by context and study design.",
    whyItMatters: "It is relevant to understanding performance environments and the importance of reducing identity-based threat and bias.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is implicit bias?",
    options: [
      "An automatic association or evaluation that can influence judgement without conscious intention",
      "A belief that a person openly states",
      "A deliberate and documented policy",
      "A bias that affects every person in exactly the same way",
    ],
    correctAnswerIndex: 0,
    explanation: "Implicit bias refers to automatic associations or evaluations that may influence perception and behaviour without being consciously endorsed. Measures and predictive validity vary.",
    whyItMatters: "Awareness, structured decision processes and accountability can help reduce the influence of bias in consequential decisions.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is stereotype-based prejudice?",
    options: [
      "A negative attitude or evaluation toward people based on group membership",
      "A neutral description of an individual's behaviour",
      "A form of short-term memory",
      "A method for testing reaction time",
    ],
    correctAnswerIndex: 0,
    explanation: "Prejudice refers to attitudes or evaluations toward people based on their perceived membership in a social group; stereotypes are generalised beliefs and discrimination involves behaviour.",
    whyItMatters: "Distinguishing attitudes, beliefs and actions helps analyse social inequality and intergroup relations accurately.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the difference between prejudice and discrimination?",
    options: [
      "Prejudice is an attitude; discrimination is behaviour or treatment based on group membership",
      "Prejudice is always legal; discrimination is always unconscious",
      "They mean exactly the same thing",
      "Discrimination refers only to private beliefs",
    ],
    correctAnswerIndex: 0,
    explanation: "Prejudice generally refers to evaluative attitudes, while discrimination refers to actions or differential treatment. Stereotypes are generalised beliefs about groups.",
    whyItMatters: "Clear definitions improve the analysis of social behaviour, institutional practices and equality issues.",
    difficulty: "Easy",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is social identity theory broadly concerned with?",
    options: [
      "How membership in social groups contributes to a person's self-concept and intergroup behaviour",
      "How people store memories of childhood",
      "How the brain processes colour",
      "How individuals calculate probability",
    ],
    correctAnswerIndex: 0,
    explanation: "Social identity theory examines how people derive part of their self-concept from group memberships and how categorisation can shape intergroup attitudes and behaviour.",
    whyItMatters: "It helps explain in-group identification, group comparisons and some forms of intergroup bias.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is diffusion of responsibility?",
    options: [
      "A reduction in an individual's felt responsibility when responsibility is shared among several people",
      "A tendency to take responsibility for every outcome",
      "A method of assigning tasks to one person",
      "A form of long-term memory",
    ],
    correctAnswerIndex: 0,
    explanation: "Diffusion of responsibility occurs when individuals feel less personally accountable because other people are also present or could act.",
    whyItMatters: "It helps explain some bystander behaviour and why clearly assigning an individual to act can be effective in emergencies.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is deindividuation?",
    options: [
      "A reduction in self-awareness or personal accountability that can occur in some group situations",
      "An increase in individual reflection",
      "A method for identifying personality traits",
      "A form of sensory adaptation",
    ],
    correctAnswerIndex: 0,
    explanation: "Deindividuation describes reduced self-awareness or accountability in certain group contexts, sometimes associated with anonymity and heightened group immersion. It does not automatically lead to harmful behaviour.",
    whyItMatters: "It helps researchers examine how group settings, norms and accountability shape conduct.",
    difficulty: "Hard",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the foot-in-the-door technique?",
    options: [
      "Gaining agreement to a small request before making a larger related request",
      "Starting with the largest possible request",
      "Refusing to negotiate",
      "Offering a reward after every refusal",
    ],
    correctAnswerIndex: 0,
    explanation: "The foot-in-the-door technique is a persuasion strategy in which agreement to a small initial request can increase the likelihood of agreeing to a larger related request later.",
    whyItMatters: "Understanding compliance techniques helps people recognise persuasion strategies and make more deliberate choices.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the door-in-the-face technique?",
    options: [
      "Making a large request likely to be refused, then presenting a smaller target request",
      "Making a small request and then withdrawing it",
      "Repeating the same request indefinitely",
      "Offering two identical choices",
    ],
    correctAnswerIndex: 0,
    explanation: "The door-in-the-face technique begins with an intentionally large request, followed by a smaller request. The contrast and perceived concession may increase compliance.",
    whyItMatters: "Recognising this approach can help people evaluate requests independently rather than feeling obliged to reciprocate a concession.",
    difficulty: "Medium",
  ),

Question(
    category: "Psychology & Human Behaviour",
    questionText: "What is the bystander intervention approach of directly assigning a helper intended to address?",
    options: [
      "Diffusion of responsibility in a group",
      "The primacy effect in memory",
      "The placebo effect",
      "The spacing effect",
    ],
    correctAnswerIndex: 0,
    explanation: "Addressing a specific person by name or description and giving a clear task can reduce ambiguity about who is responsible for acting.",
    whyItMatters: "Clear delegation can improve the chance of an effective response during emergencies.",
    difficulty: "Easy",
  )

];

// =========================================
// END OF FILE
// =========================================
