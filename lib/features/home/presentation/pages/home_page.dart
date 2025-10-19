import 'package:flutter/material.dart';
import 'package:task_marker/features/home/Model/Task.dart';
import 'package:task_marker/features/home/data/greetings.dart';
import 'package:task_marker/features/home/presentation/widgets/profile_section.dart';
import 'package:task_marker/features/home/presentation/widgets/search_section.dart';

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
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 2)
              ),
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FlutterLogo(size: 50),
                    title: Text(tasks[index].title),
                    subtitle: Text(tasks[index].description),
                    trailing: Row(
                      children: [
                        IconButton(
                          onPressed: (){},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.green
                          ),
                          icon: Icon(Icons.check)
                        ),
                        IconButton(
                          onPressed: (){},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.amber
                          ),
                          icon: Icon(Icons.edit)
                        ),
                        IconButton(
                          onPressed: (){},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.red
                          ),
                          icon: Icon(Icons.delete)
                        ),
                      ],
                    ),
                  );
                }
              ),
            ),
          )
        ],
      ),
    );
  }
}

