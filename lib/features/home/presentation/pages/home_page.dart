import 'package:flutter/material.dart';
import 'package:task_marker/features/home/model/task.dart';
import 'package:task_marker/features/home/data/greetings.dart';
import 'package:task_marker/features/home/presentation/widgets/empty_tasks_list.dart';
import 'package:task_marker/features/home/presentation/widgets/profile_section.dart';
import 'package:task_marker/features/home/presentation/widgets/search_section.dart';
import 'package:task_marker/features/home/presentation/widgets/task_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> tasks = [];
  final String _greetings = getGreeting();
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        spacing: 20.0,
        children: [
          ProfileSection(greetings: _greetings),
          SearchSection(controller: _controller),
          tasks.isNotEmpty ? TasksList(tasks: tasks) : EmptyTasksList()
        ],
      ),
    );
  }
}

