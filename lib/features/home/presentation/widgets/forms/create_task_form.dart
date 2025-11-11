import 'package:flutter/material.dart';

class CreateTaskForm extends StatefulWidget {
  const CreateTaskForm({super.key});

  @override
  State<CreateTaskForm> createState() => _CreateTaskFormState();
}

class _CreateTaskFormState extends State<CreateTaskForm> {
  @override

  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final tagController = TextEditingController();
  String selectedDifficulty = 'Medium';
  DateTime startTime = DateTime.now();
  DateTime deadline = DateTime.now().add(const Duration(days: 1));

  final difficulties = ["Easy", "Medium", "Hard"];
  final tags = ["Work", "Home", "School", "Entertainment"];

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Add New Task"
            ),
            TextFormField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder()
              ),
              validator: (v) => v == null || v.isEmpty ? "Enter a title" : null,
            ),
            TextFormField(
              controller: descriptionController,
              decoration: const InputDecoration(
                labelText: "Description",
                border: OutlineInputBorder()
              ),
              maxLines: 3,
            ),
            DropdownButtonFormField(
              items: difficulties
                .map((d) => DropdownMenuItem(
                  value: d,
                  child: Text(d),
                ))
                .toList(),
              onChanged: (v) => setState(() {
                selectedDifficulty = v!;
              })
            ),
            DropdownButtonFormField(
              items: tags
                .map((t) => DropdownMenuItem(
                  value: t,
                  child: Text(t)
                )
                ).toList(),
              onChanged: (v) => setState(() {
                tagController.text = v!;
              })
            ),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
              ),
              child: const Text("Add Task")
            )
          ],
        )
      ),
    );
  }
}