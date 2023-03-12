import 'package:flutter/material.dart';

class TaskSix extends StatelessWidget {
  const TaskSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: 250,
          height: 250,
          color: Colors.deepPurple,
          child: Container(
          width: 50,
          height: 50,
          color: Colors.yellow,
        ),
        ),
      ),
    );
  }
}