import 'package:task_marker/features/home/data/mock_tasks.dart';

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

  Task.empty():
    id = 0,
    title = '',
    description = '',
    difficulty = '',
    startTime = DateTime.now(),
    deadline = DateTime.now(),
    tag = '';
  
  static List<Task> tasks = mockTasks;
}