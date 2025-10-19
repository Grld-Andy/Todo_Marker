import 'package:flutter/material.dart';
import 'package:task_marker/features/home/model/task.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}

