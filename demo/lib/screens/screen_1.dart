import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/screen_2.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          const Text('Screen 1'),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Errorrrrr'),
                        actions: [
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.add))
                        ],
                      );
                    });
                // Navigator.of(context).push(MaterialPageRoute(builder: (ctx) {
                //   return ScreenTwo();
                // }));
                // Navigator.of(context).pushNamed('second_screen');
                // ElevatedButton(
                //             onPressed: () {

                //             },
                //             child: Text('Clickme'));
              },
              child: const Text('Go to screen 2'))
        ]),
      ),
    );
  }
}
