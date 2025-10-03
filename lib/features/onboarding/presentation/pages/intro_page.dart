import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          spacing: 10,
          children: [
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: Colors.black
                  )
                ),
                child: Image.asset(
                  'assets/images/TIP.png',
                  fit: BoxFit.cover,
                ),
              )
            ),
            TextButton(
              onPressed: (){},
              style: TextButton.styleFrom(
                backgroundColor: Colors.yellow[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(5),
                )
              ),
              child: Text("HI")
            )
          ],
        ),
      ),
    );
  }
}