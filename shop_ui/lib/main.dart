import 'package:flutter/material.dart';
import 'package:shop_ui/screens/2.dart';
import 'package:shop_ui/screens/shop_ui.dart';
// import 'package:shop_ui/screens/shop_ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ShopUi(),
      debugShowCheckedModeBanner: false,
    );
  }
}