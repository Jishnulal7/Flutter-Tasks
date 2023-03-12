import 'package:db_sample_hive/model/data_model.dart';
import 'package:flutter/cupertino.dart';

ValueNotifier<List<StudentModel>> studentListNotifier = ValueNotifier([]);

void addStudent(StudentModel value) {
  studentListNotifier.value.add(value);
  studentListNotifier.notifyListeners();
}
