import 'package:db_sample_hive/screen/widgets/add_student.dart';
import 'package:db_sample_hive/screen/widgets/list_student.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AddStudent(),
            const Expanded(child: ListStudent()),
          ],
        ),
      ),
    );
  }
}
