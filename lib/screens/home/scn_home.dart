// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:provider_student_management/controllers/student_controller.dart';
import 'package:provider_student_management/screens/add/scn_add.dart';
import 'package:provider_student_management/screens/home/custom_appbar.dart';
import 'package:provider_student_management/screens/home/w_list_tile.dart';
import 'package:provider_student_management/utils/constants/sizes.dart';

class ScnHome extends StatelessWidget {
  const ScnHome({super.key});
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
                builder: (context, dataProvider , child) {
                  return ListView.builder(
                    itemCount: dataProvider.allStudents.length,
                    itemBuilder: (BuildContext context, int index) {
                      if(dataProvider.allStudents.isEmpty){
                        return const Center(child: Text("Add Some Data"),);
                      }
                      return TileList(index: index,);
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


