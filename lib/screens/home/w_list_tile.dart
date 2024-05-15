// ignore_for_file: prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/edit/edit.dart';
import 'package:provider_student_management/screens/home/dialogue_delete.dart';
import 'package:provider_student_management/screens/profile/scn_profile.dart';
import 'package:provider_student_management/utils/constants/colors.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';
import 'package:provider_student_management/utils/helpers/helper_functions.dart';


class TileList extends StatelessWidget {
   TileList({Key? key,required this.index}) : super(key: key);
  int index;
  
  @override
  Widget build(BuildContext context) {
    Student data = context.read<DataProvider>().allStudents[index];
    final isDark = JHelperFunctions.isDarkMode(context);
    return Container(
      margin: EdgeInsets.only(bottom: JmSize.spaceBtwItems/2),
      decoration: BoxDecoration(
        color: isDark ?JColor.darkGrey : JColor.lightGrey  ,
        borderRadius: BorderRadius.circular(5),
      ),
      height: 73,
      child: Slidable(
        startActionPane: ActionPane(
          motion: const BehindMotion(),
          children: [
            SlidableAction(
              icon: Icons.delete,
              backgroundColor: const Color.fromARGB(188, 244, 67, 54),
              onPressed: (BuildContext context) {
                showDeleteDialog(context, data);
              },
            ),
            SlidableAction(
              icon: Icons.edit,
              backgroundColor: Color.fromARGB(188, 0, 190, 95),
              onPressed: (BuildContext context) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditStudent(index: index,)),
                );
              },
            )
          ],
        ),
        child: ListTile(
          leading: Hero( 
            tag: "profile",
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage('assets/images/profile_default.png',),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              data.firstName,
              style: TextStyle(fontSize: 20),
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              data.place,
              style: TextStyle(fontSize: 17),
            ),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile(index: index,)),
            );
          },
        ),
      ),
    );
  }
}

void showDeleteDialog(BuildContext context, Student data) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return DeleteDialogue(data: data);
    },
  );
}
