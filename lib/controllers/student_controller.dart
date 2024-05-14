import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider_student_management/model/student.dart';

class DataProvider extends ChangeNotifier {
  List<Student> allStudents = [];
  List<Student> searchStudentsList = [];
  double paddingValue = 15;
  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final phoneController = TextEditingController();
  final placeController = TextEditingController();
  final mailidController = TextEditingController();
  final searchController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  final fnameKey = GlobalKey<FormFieldState>();
  final lnameKey = GlobalKey<FormFieldState>();
  final placeKey = GlobalKey<FormFieldState>();
  final phoneKey = GlobalKey<FormFieldState>();
  final mailidKey = GlobalKey<FormFieldState>();

  togglePadVal() {
    paddingValue == 15.0 ? paddingValue = 330.0 : paddingValue = 15.0;
    notifyListeners();
    log("current padding value $paddingValue");
  }

  void clearControllers() {
    fnameController.clear();
    lnameController.clear();
    phoneController.clear();
    placeController.clear();
    mailidController.clear();
  }

  void addStudent() async {
    final boxStudent = await Hive.openBox<Student>('studentBox');
    final int id = await boxStudent.add(Student(
        firstName: fnameController.text,
        lastName: lnameController.text,
        place: placeController.text,
        mail: mailidController.text,
        image: ""));

    await boxStudent.put(
        id,
        Student(
            firstName: fnameController.text,
            lastName: lnameController.text,
            place: placeController.text,
            mail: mailidController.text,
            image: "",
            id: id));

    getAllStudent();
    clearControllers();
  }

  Future<List<Student>> getAllStudent() async {
    final boxStudent = await Hive.openBox<Student>('studentBox');
    allStudents.clear();
    allStudents = boxStudent.values.toList();
    notifyListeners();
    return allStudents;
  }

  deleteStudent(int? id) async {
    final boxStudent = await Hive.openBox<Student>('studentBox');
    boxStudent.delete(id);
    getAllStudent();
  }

  search() async {
    log("entered fn");
    final boxStudent = await Hive.openBox<Student>('studentBox');
    final searchList = boxStudent.values.toList();
    for (var student in searchList) {
      if (student.firstName
          .toLowerCase()
          .contains(searchController.text.toLowerCase())) {
        searchStudentsList.add(student);
      }
    }

    notifyListeners();
  }
}
