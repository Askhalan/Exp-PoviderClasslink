import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/edit/edit.dart';
import 'package:provider_student_management/screens/home/w_list_tile.dart';
import 'package:provider_student_management/utils/constants/colors.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';

class ActionButtons extends StatelessWidget {
  const ActionButtons({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EditStudent (index: index,)));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              decoration: BoxDecoration(color: JColor.success,borderRadius: BorderRadius.circular(JSize.borderRadMd)),
              child: const Text("Edit"),),
          ),
          InkWell(
            onTap: (){showDeleteDialog(context, context.read<DataProvider>().allStudents[index]);},
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