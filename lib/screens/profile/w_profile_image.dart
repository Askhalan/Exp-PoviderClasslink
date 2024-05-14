import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 175,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color.fromARGB(255, 255, 255, 255),
            // border:Border.all(
            //   color: Color.fromARGB(255, 232, 232, 232),
            //   width: 15,
            // )
          ),
        ),
        Container(
          height: 160,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: const Hero(
             tag: "profile",
            child: CircleAvatar(
              radius: 110,
             backgroundImage: AssetImage('assets/images/profile_default.png',),
            ),
          ),
        ),
      ],
    );
  }
}