class Task {
  final int id;
  final String title;
  final String description;
  final String difficulty;
  final DateTime startTime;
  final DateTime deadline;
  final String tag;

  Task({
    required this.id,
    required this.title,
    required this.description,
    required this.difficulty,
    required this.startTime,
    required this.deadline,
    required this.tag,
  });
}