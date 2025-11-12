import 'package:flutter/material.dart';
import 'package:task_marker/features/home/model/task.dart';
import 'package:task_marker/features/home/presentation/widgets/task_card.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: tasks.length,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(bottom: 50),
          itemBuilder: (context, index) {
            final task = tasks[index];
            return TaskCard(task: task);
          }
      ),
    );
  }
}
