import 'package:flutter/material.dart';

class EmptyTasksList extends StatelessWidget {
  const EmptyTasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Text(
          "There are no tasks at the moment\nClick the add button to add a new task",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}