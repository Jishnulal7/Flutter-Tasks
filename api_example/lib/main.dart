import 'package:api_example/users_view.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        "/":(context) => const ViewUsers(),
       "/home":(context) => const ViewUsers(),
       '/userview':(context) =>  const ViewUsers()
      },
    );
  }
}
