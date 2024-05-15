import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/profile/w_action_buttons.dart';
import 'package:provider_student_management/utils/constants/colors.dart';

class ProfileMainDetails extends StatelessWidget {
  const ProfileMainDetails({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
     Student data = context.watch<DataProvider>().allStudents[index];
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:JColor.secondary,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 13),
      height: 280,
      width: 385,
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [
            Text(
             "${ data.firstName} ${ data.lastName}",
              style: const TextStyle(fontSize: 30),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    data.place,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    data.mail,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            ActionButtons(index: index,)
          ],
        ),
      ),
    );
  }
}