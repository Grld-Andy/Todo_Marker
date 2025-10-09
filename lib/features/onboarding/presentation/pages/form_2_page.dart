import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/custom_text_button.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 5,
                  children: [
                    H1Text(text: "Choose to tags to add now.\nYou can add more and remove some later😊."),
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
                text: "DONE", onPressed: (){
                  Navigator.pushNamed(context, "/form3");
                }
              )
            ],
          ),
        )
      ),
    );
  }
}
