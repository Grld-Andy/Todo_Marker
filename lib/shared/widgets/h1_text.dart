import 'package:flutter/material.dart';

class h1_text extends StatelessWidget {
  final String text;

  const h1_text({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}