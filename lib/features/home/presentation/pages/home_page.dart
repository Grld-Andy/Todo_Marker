import 'package:flutter/material.dart';
import 'package:task_marker/features/home/Model/Task.dart';
import 'package:task_marker/features/home/data/greetings.dart';
import 'package:task_marker/features/home/presentation/widgets/search_section.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> tasks = [];
  final String _greetings = getGreeting();
  final TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        spacing: 20.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  H1Text(text: "$_greetings, username"),
                  Text("You have 4 tasks today")
                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/TIP.png'),
              )
            ],
          ),
          SearchSection(controller: _controller)
        ],
      ),
    );
  }
}
