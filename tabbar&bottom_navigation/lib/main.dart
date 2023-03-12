import 'package:flutter/material.dart';
import 'package:flutter_tasks/screens/first_page.dart';

import './screens/second_page.dart';
void main() {
   runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SecondPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}