import 'package:flutter/material.dart';
import 'package:task_marker/features/onboarding/presentation/pages/form_1_page.dart';

class CustomTextButton extends StatelessWidget {
  final String text;

  const CustomTextButton({
    super.key, required this.text
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => Form1Page()));
      },
      style: TextButton.styleFrom(
        backgroundColor: Colors.yellow[800],
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(5),
        )
      ),
      child: Text(text,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      )
    );
  }
}