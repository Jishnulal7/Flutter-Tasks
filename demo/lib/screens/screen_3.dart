import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login/screen_2.dart';
import 'package:login/screen_4.dart';
import 'package:login/screens/screen_2.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenThree extends StatelessWidget {
  final String name;

  const ScreenThree({super.key, required this.name});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: ElevatedButton(
        child: const Text('Go back'),
        onPressed: () {
          Navigator.of(context).pop(MaterialPageRoute(builder: (context) {
            return const ScreenTwo();
          }));
        },
      ),
    );
  }
}

