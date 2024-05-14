import 'package:flutter/material.dart';
import 'package:provider_student_management/utils/constants/colors.dart';
import '../../constants/sizes.dart';

class JTextFormFieldTheme {
  JTextFormFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 3,
      prefixIconColor: JColor.darkGrey,
      suffixIconColor: JColor.darkGrey,
      // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
      labelStyle: const TextStyle()
          .copyWith(fontSize: JmSize.fontSizeMd, color: JColor.black),
      hintStyle: const TextStyle()
          .copyWith(fontSize: JmSize.fontSizeSm, color: JColor.black),
      errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
      floatingLabelStyle:
          const TextStyle().copyWith(color: JColor.black.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.grey),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.grey),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.dark),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.warning),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 2, color: JColor.warning),
      ),
      filled: true,
      fillColor: JColor.lightGrey
      );



//---------------------------------- Dark Theme ---------------------------------- 


  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      errorMaxLines: 2,
      prefixIconColor: JColor.darkGrey,
      suffixIconColor: JColor.darkGrey,
      // constraints: const BoxConstraints.expand(height: TSizes.inputFieldHeight),
      labelStyle: const TextStyle()
          .copyWith(fontSize: JmSize.fontSizeMd, color: JColor.white),
      hintStyle: const TextStyle()
          .copyWith(fontSize: JmSize.fontSizeSm, color: JColor.white),
      floatingLabelStyle:
          const TextStyle().copyWith(color: JColor.white.withOpacity(0.8)),
      border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.darkGrey),
      ),
      enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.darkGrey),
      ),
      focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.white),
      ),
      errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 1, color: JColor.warning),
      ),
      focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(JmSize.inputFieldRadius),
        borderSide: const BorderSide(width: 2, color: JColor.warning),
      ),
      fillColor: JColor.bgSecondary);
}
