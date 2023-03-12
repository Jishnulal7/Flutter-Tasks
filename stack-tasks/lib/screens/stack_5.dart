import 'package:flutter/material.dart';

class TaskFive extends StatelessWidget {
  const TaskFive({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
            child: Stack(
                  // alignment: Alignment.center,
                  children: [
            Container(
              height: 400,
              width: 370,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(200)),
            ),
            ClipRect(
              child: Padding(
                padding: const EdgeInsets.only(left: 160,bottom: 80),
                child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(
                      color: Colors.red, borderRadius: BorderRadius.circular(200)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150,left: 150),
              child: Container(
                height: 175,
                width: 175,
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(200)),
              ),
            ),
            Container(
              height: 125,
              width: 125,
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(200)),
            )
                  ],
                ),
          )),
    );
  }
}
