import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/custom_text_button.dart';

class Form2Page extends StatefulWidget {
  const Form2Page({super.key});

  @override
  State<Form2Page> createState() => _Form2PageState();
}

class _Form2PageState extends State<Form2Page> {
  final List<String> tags = [
    "Cooking", "Hoobies", "Study", "Work", "Home", "WorkOut"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 5,
                  children: [
                    Text(
                      "Choose to tags to add now. You can add more and remove some later😊.",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Wrap(
                      spacing: 5.0,
                      runSpacing: 5.0,
                      children: tags.map((tag){
                        return Chip(
                          label: Text(tag),
                          backgroundColor: Colors.yellow[700],
                        );
                      }).toList(),
                    )
                  ],
                )
              ),
              CustomTextButton(
                text: "DONE", onPressed: (){}
              )
            ],
          ),
        )
      ),
    );
  }
}