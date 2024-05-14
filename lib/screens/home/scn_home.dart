// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/add/scn_add.dart';
import 'package:provider_student_management/screens/home/custom_appbar.dart';
import 'package:provider_student_management/screens/home/w_list_tile.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';

class ScnHome extends StatelessWidget {
  ScnHome({super.key});
  Student data = Student(
      firstName: 'firstName',
      lastName: 'lastName',
      place: 'place',
      mail: 'mail',
      image: 'image');
  @override
  Widget build(BuildContext context) {
    context.read<DataProvider>().getAllStudent();
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(JmSize.spaceBtwItems/2),
              child:  Consumer<DataProvider>(
                builder: (context, allStudents , child) {
                  return ListView.builder(
                    itemCount: context.read<DataProvider>().allStudents.length,
                    itemBuilder: (BuildContext context, int index) {
                      Student data = context.read<DataProvider>().allStudents[index];
                      if(context.read<DataProvider>().allStudents.isEmpty){
                        return const Center(child: Text("Add Some Data"),);
                      }
                      return TileList(data: data);
                    },
                   
                  );
                }
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=> AddStudent() ));
      },child: const Icon(Icons.add),),
    );
  }
}


