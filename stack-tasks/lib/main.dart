import 'package:flutter/material.dart';
import 'package:stack_tasks/screens/stack_1.dart';
import 'package:stack_tasks/screens/stack_2.dart';
import 'package:stack_tasks/screens/stack_4.dart';

import 'screens/stack_3.dart';
import 'screens/stack_5.dart';
import 'screens/stack_6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TaskSix(),
      debugShowCheckedModeBanner: false,
    );
  }
} 