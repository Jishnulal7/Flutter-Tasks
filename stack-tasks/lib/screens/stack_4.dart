import 'package:flutter/material.dart';

class TaskFour extends StatelessWidget {
  const TaskFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            alignment: Alignment.center,
            color: Colors.red,
            height: 100,
            width: 100,
            child: const Text('Non-Positioned'),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, left: 100),
            child: Container(
              alignment: Alignment.center,
              color: Colors.deepPurple,
              height: 205,
              width: 205,
              child: const Text('Positioned',)
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              color: Colors.indigo,
              child: const Text('Aligned',textAlign: TextAlign.center,)
            ),
          ),
        ],
      )),
    );
  }
}
