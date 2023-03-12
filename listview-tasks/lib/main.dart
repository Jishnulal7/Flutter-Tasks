import 'package:flutter/material.dart';
import 'package:mario_list_tile/screens/list%20and%20grid/listview_or_gridview.dart';



import 'package:mario_list_tile/screens/mario.dart';
import 'package:mario_list_tile/screens/message_screen.dart';
import 'package:mario_list_tile/screens/simple_contact.dart';
import 'package:mario_list_tile/screens/simple_list_tile.dart';
import 'package:mario_list_tile/screens/simple_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      // home: MarioListView(),
      home: ListorGrid(),
      theme: ThemeData(primaryColor: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
    );
  }
}
