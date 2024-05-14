import 'package:flutter/material.dart';
import 'package:provider_student_management/utils/constants/colors.dart';


class JBottomSheetTheme {
  JBottomSheetTheme._();

// +++++++---------------------------- LIGHT THEME ----------------------------+++++++

  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColor.white,
    modalBackgroundColor: JColor.white,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

// +++++++---------------------------- DARK THEME ----------------------------+++++++

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: JColor.black,
    modalBackgroundColor: JColor.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
