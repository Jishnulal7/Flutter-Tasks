import 'package:flutter/material.dart';

class TaskThree extends StatelessWidget {
  const TaskThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Stack(
        alignment: Alignment.center,
        children: [
          
          Container(
            height: 200,
            width: 200,
            color: Colors.deepPurple[200],
            
          ),Container(
            height: 150,
            width: 150,
            color: Colors.deepPurple[300],
            ),
            Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple[350],
            ),Container(
            height: 75,
            width: 75,
            color: Colors.deepPurple[400],
            ),Container(
            height: 50,
            width: 50,
            color: Colors.deepPurple[450],
            ),Container(
            height: 25,
            width: 25,
            color: Colors.deepPurple[500],
            ),
        ],
      )),
    );
  }
}