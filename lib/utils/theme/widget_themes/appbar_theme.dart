import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class JAppBarTheme{
  JAppBarTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static const lightAppBarTheme = AppBarTheme(
    elevation: 1,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor:JColor.primary,
    surfaceTintColor: JColor.primary,
    iconTheme: IconThemeData(color: JColor.black, size: JmSize.iconMd),
    actionsIconTheme: IconThemeData(color: JColor.black, size: JmSize.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColor.black),
  );

  // +++++++---------------------------- DARK THEME ----------------------------+++++++

  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor:JColor.primary,
    surfaceTintColor: JColor.primary,
    iconTheme: IconThemeData(color: JColor.black, size: JmSize.iconMd),
    actionsIconTheme: IconThemeData(color: JColor.white, size: JmSize.iconMd),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: JColor.white),
  );
}