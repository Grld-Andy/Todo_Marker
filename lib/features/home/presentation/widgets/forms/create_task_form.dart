import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class CreateTaskForm extends StatefulWidget {
  const CreateTaskForm({super.key});

  @override
  State<CreateTaskForm> createState() => _CreateTaskFormState();
}

class _CreateTaskFormState extends State<CreateTaskForm> {
  final formKey = GlobalKey<FormState>();
  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final tagController = TextEditingController();
  String selectedDifficulty = 'Medium';
  DateTime startTime = DateTime.now();
  DateTime deadline = DateTime.now().add(const Duration(days: 1));

  final difficulties = ["Easy", "Medium", "Hard"];
  final tags = ["Work", "Home", "School", "Entertainment"];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            const Center(
              child: H1Text(
                text: "Add New Task"
              ),
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
            DropdownButtonFormField2<String>(
              decoration: InputDecoration(
                labelText: 'Difficulty',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
              ),
              isExpanded: true,
              items: difficulties.map((d) {
                Color color;
                switch (d) {
                  case 'Easy':
                    color = Colors.green;
                    break;
                  case 'Medium':
                    color = Colors.orange;
                    break;
                  case 'Hard':
                    color = Colors.red;
                    break;
                  default:
                    color = Colors.grey;
                }
                return DropdownMenuItem<String>(
                  value: d,
                  child: Row(
                    children: [
                      Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                      ),
                      const SizedBox(width: 8),
                      Text(d, style: const TextStyle(fontWeight: FontWeight.w500)),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedDifficulty = value!;
                });
              },
              validator: (value) => value == null ? 'Select difficulty' : null,
            ),
            DropdownButtonFormField2(
              decoration: InputDecoration(
                labelText: "Tag",
                border: OutlineInputBorder()
              ),
              isExpanded: true,
              items: tags.map((t){
                return DropdownMenuItem(
                  value: t,
                  child: Text(t)
                );
              }).toList(),
              onChanged: (v){
                setState(() {
                  tagController.text = v!;
                });
              },
            ),
            ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
              ),
              child: const Text("Add Task")
            ),
            SizedBox(height: 5,)
          ],
        )
      ),
    );
  }
}