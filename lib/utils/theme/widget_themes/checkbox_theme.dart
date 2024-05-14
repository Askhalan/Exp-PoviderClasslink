import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/sizes.dart';


class JCheckboxTheme {
  JCheckboxTheme._(); // To avoid creating instances

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JmSize.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return JColor.white;
      } else {
        return JColor.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return JColor.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JmSize.xs)),
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return JColor.white;
      } else {
        return JColor.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return JColor.primary;
      } else {
        return Colors.transparent;
      }
    }),
  );
}
