import 'package:flutter/material.dart';
import 'package:task_marker/shared/widgets/h1_text.dart';

class Form3Page extends StatelessWidget {
  const Form3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          H1Text(text: "Would you like to track tasks by difficulty"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.check),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.green[400],
                  foregroundColor: Colors.green[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  ),
                  iconSize: 70
                ),
              ),
              IconButton(
                onPressed: (){
                },
                icon: Icon(Icons.close),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.red[700],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(10)
                  ),
                  iconSize: 70
                )
              ),
            ],
          )
        ],
      )
    );
  }
}