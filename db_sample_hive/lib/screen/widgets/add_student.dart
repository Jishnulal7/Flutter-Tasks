import 'package:db_sample_hive/db/functions/db_functions.dart';
import 'package:db_sample_hive/model/data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AddStudent extends StatelessWidget {
  AddStudent({super.key});
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Name'),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
              controller: _ageController,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: 'Age')),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                onAddStudent();
              },
              child: const Text("Add Student"))
        ],
      ),
    );
  }

  Future<void> onAddStudent() async {
    final _name = _nameController.text.trim();
    final _age = _ageController.text.trim();
    if (_name.isEmpty || _age.isEmpty) {
      return;
    }
    print('$_name $_age');

    final _student = StudentModel(name: _name, age: _age);
    addStudent(_student);
  }
}
