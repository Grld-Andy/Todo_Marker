import 'package:flutter/material.dart';
import 'package:task_marker/features/home/model/task.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
    required greetings,
    required this.tasks,
  }) : _greetings = greetings;

  final String _greetings;
  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.amber[100], // soft background
        borderRadius: BorderRadius.circular(16),
      ),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H1Text(text: "$_greetings, username"),
              Text(
                "You have ${tasks.length} tasks today",
                style: TextStyle(
                  color: Colors.grey[800]
                ),
              )
            ],
          ),
          CircleAvatar(
            radius: 24,
            backgroundColor: Colors.amber[500],
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/TIP.png'),
            ),
          )
        ],
      ),
    );
  }
}
