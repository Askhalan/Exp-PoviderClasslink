import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

/* -- Light & Dark Outlined Button Themes -- */
class JOutlinedButtonTheme {
  JOutlinedButtonTheme._(); //To avoid creating instances


  /* -- Light Theme -- */
  static final lightOutlinedButtonTheme  = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: JColor.dark,
      side: const BorderSide(color: JColor.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: JColor.black, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: JmSize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JmSize.buttonRadius)),
    ),
  );

  /* -- Dark Theme -- */
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: JColor.light,
      side: const BorderSide(color: JColor.borderPrimary),
      textStyle: const TextStyle(fontSize: 16, color: JColor.textWhite, fontWeight: FontWeight.w600),
      padding: const EdgeInsets.symmetric(vertical: JmSize.buttonHeight, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(JmSize.buttonRadius)),
    ),
  );
}
