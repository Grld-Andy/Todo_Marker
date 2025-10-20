import 'package:flutter/material.dart';
import 'package:task_marker/features/home/model/task.dart';
import 'package:task_marker/features/home/presentation/widgets/task_button.dart';

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
        itemBuilder: (context, index) {
          final task = tasks[index];
          return Padding(
            padding: EdgeInsets.only(
              bottom: index == tasks.length - 1 ? 50.0 : 0, // only last card gets extra space
            ),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: Row(
                  spacing: 5,
                  children: [
                    // FlutterLogo(size: 50),
                    CircleAvatar(
                      radius: 20,
                      child: Icon(
                        Icons.person,
                        color: Colors.deepOrange,
                        size: 30,
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 2,
                        children: [
                          Text(
                            task.title
                          ),
                          Text(
                            task.description,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color: Colors.grey[700]
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: const Color.fromARGB(128, 243, 159, 33)),
                              borderRadius: BorderRadius.circular(50),
                              color: const Color.fromARGB(26, 243, 100, 33),
                            ),
                            child: Text(
                              task.tag,
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400
                              ),
                            ),
                          ),
                        ],
                      )
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TaskButton(
                          icon: Icons.check,
                          color: Colors.green,
                          bgColor: const Color.fromRGBO(76, 175, 80, 0.2),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 6),
                        TaskButton(
                          icon: Icons.edit,
                          color: Colors.amber,
                          bgColor: const Color.fromRGBO(255, 193, 7, 0.2),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 6),
                        TaskButton(
                          icon: Icons.delete,
                          color: Colors.red,
                          bgColor: const Color.fromRGBO(244, 67, 54, 0.2),
                          onPressed: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}
