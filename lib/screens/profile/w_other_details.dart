// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 171, 214, 202),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      height: 280,
      width: double.infinity,
      padding: const EdgeInsets.only(top: 20),
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
