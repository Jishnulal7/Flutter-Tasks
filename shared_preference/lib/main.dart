import 'package:flutter/material.dart';
import 'package:shared_preference/screen_1.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: ScreenOne(),
    );
  }
}