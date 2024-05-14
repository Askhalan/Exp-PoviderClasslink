// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/home/scn_home.dart';

class DeleteDialogue extends StatelessWidget {
  const DeleteDialogue({Key? key, required this.data}) : super(key: key);
  final Student data;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Delete'),
      content: Text('Are you sure you want to delete?'),
      actions: [
        
        ElevatedButton(
          onPressed: () {
            context.read<DataProvider>().deleteStudent(data.id);
            Navigator.pushAndRemoveUntil(context,
             MaterialPageRoute(builder: (context) => ScnHome(),), (route) => false);
          },
          child: Text('Yes'),
        ),
        SizedBox(width: 10,),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('No'),
        ),
        SizedBox(width: 10,),
      ],
    );
  }
}
