import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class Form3Page extends StatelessWidget {
  const Form3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          H1Text(text: "Would you like to track tasks by difficulty")
        ],
      )
    );
  }
}