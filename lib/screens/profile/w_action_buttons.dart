import 'package:flutter/material.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/home/w_list_tile.dart';
import 'package:provider_student_management/utils/constants/colors.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.data,
  });

  final Student data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){
              // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (context) => EditScn(
                //               data: data,
                //             )));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(color: JColor.success,borderRadius: BorderRadius.circular(JSize.borderRadMd)),
              child: const Text("Edit"),),
          ),
          InkWell(
            onTap: (){showDeleteDialog(context, data);},
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(color: JColor.error,borderRadius: BorderRadius.circular(JSize.borderRadMd)),
              child: const Text("Delete"),),
          )
        ],
      ),
    );
  }
}