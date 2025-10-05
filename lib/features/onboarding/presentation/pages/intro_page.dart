import 'package:flutter/material.dart';
import 'package:task_marker/features/onboarding/presentation/pages/form_1_page.dart';
import 'package:task_marker/shared/widgets/custom_text_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 10,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Image.asset(
                  'assets/images/TIP.png',
                  fit: BoxFit.cover,
                ),
              )
            ),
            CustomTextButton(
              text: "HI",
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Form1Page()));
              })
          ],
        ),
      ),
    );
  }
}
