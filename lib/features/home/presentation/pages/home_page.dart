import 'package:flutter/material.dart';
import 'package:task_marker/features/home/Model/Task.dart';
import 'package:task_marker/features/home/data/greetings.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Task> tasks = [];
  final String _greetings = getGreeting();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  H1Text(text: "Hello username"),
                  Text("You have 4 tasks today")
                ],
              ),
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/TIP.png'),
              )
            ],
          )
        ],
      ),
    );
  }
}