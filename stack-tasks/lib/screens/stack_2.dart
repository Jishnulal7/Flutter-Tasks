import 'package:flutter/material.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Kindacode.com'),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Container(
              height: 400,
              width: 400,
              color: Colors.blue[100],
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.blue[200],
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue[300],
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.blue[400],
            ),
            Container(
              height: 50,
              width: 50,
              color: Colors.blue[500],
            )
          ],
        ));
  }
}
