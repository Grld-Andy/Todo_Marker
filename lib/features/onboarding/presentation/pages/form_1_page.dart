import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/custom_text_button.dart';

class Form1Page extends StatefulWidget {
  const Form1Page({super.key});

  @override
  State<Form1Page> createState() => _Form1PageState();
}

class _Form1PageState extends State<Form1Page> {
  final _textcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            spacing: 10,
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      "Please enter your username",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    TextField(
                      controller: _textcontroller,
                      decoration: InputDecoration(
                        hintText: "I am ... Iron Man",
                        border: OutlineInputBorder()
                      ),
                    ),
                  ],
                ),
              ),
              CustomTextButton(text: "NEXT")
            ],
          ),
        )
      ),
    );
  }
}