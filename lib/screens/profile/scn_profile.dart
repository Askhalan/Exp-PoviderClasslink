// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:provider_student_management/model/student.dart';
import 'package:provider_student_management/screens/profile/w_main_details.dart';
import 'package:provider_student_management/screens/profile/w_other_details.dart';
import 'package:provider_student_management/screens/profile/w_profile_image.dart';



class Profile extends StatelessWidget {
  const Profile({super.key, required this.data});
  final Student data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 400,
                  ),
                  Positioned(
                    top: 75,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                      ),
                      child: ProfileMainDetails(data: data),
                    ),
                  ),
                  ProfileImage(),
                ],
              ),
              OtherDetails()
            ],
          ),
        ),
      ),
    );
  }
}






