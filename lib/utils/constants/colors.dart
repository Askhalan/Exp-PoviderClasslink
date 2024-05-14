import 'package:flutter/material.dart';

class JColor {
  JColor._();

  // App Basic Colors
  static const Color primary =  Color.fromARGB(255, 20, 192, 163);
  static const Color secondary =  Color.fromARGB(255, 148, 214, 195);
  static const Color accent = Color.fromARGB(255, 47, 124, 106);

  // Text Colors
  // static const Color textPrimary = Color(0xFF000000);
  static const Color textSecondary = Color(0xFFFFE6BD);
  static const Color textaccent = Color(0xFFFFE6BD);

// Graph Colors
  static const Color piPrimary = Color.fromARGB(255, 27, 134, 248);
  static const Color piSecondary = Color.fromARGB(255, 150, 180, 255);
  static const Color piTertiary = Color.fromARGB(255, 228, 228, 228);

  // Background Colors
  static const Color bg = Color(0xFFFFFFFF);
  static const Color bgSecondary = Color.fromARGB(255, 242, 242, 242);

  // Border Colors
  static const Color borderPrimary = Color(0xFFE8ECF4);



  // Gradient Colors
  static const Gradient gradientBg = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 255, 179, 86),
      Color.fromARGB(255, 240, 199, 133),
      Color.fromARGB(255, 255, 179, 86),
    ],
  );

// ------------------ Colors From TT ------------------

  static const Color tprimary = Color(0xFF4b68ff);
  static const Color tsecondary = Color(0xFFFFE24B);
  static const Color taccent = Color(0xFFb0c7ff);


  // Icon Color
  static const Color icon = Color(0xFF797979);
  static const Color iconAccent = Color(0xFFFFB660);

  // Text colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color ttextSecondary = Color.fromARGB(255, 125, 118, 108);
  static const Color textWhite = Colors.white;

  // Background colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackground = Color(0xFFF3F5FF);
  static const Color transperent = Color.fromARGB(0, 255, 255, 255);

  // Background Container colors
  static const Color lightContainer = Color(0xFFF6F6F6);
  static Color darkContainer = JColor.white.withOpacity(0.1);

  // Button colors
  static const Color buttonPrimary = Color(0xffFFA22E);
  static const Color buttonSecondary = Color(0xFFFFE6BD);
  static const Color buttonDisabled = Color(0xFFC4C4C4);

  // Border colors
  static const Color tborderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFE6E6E6);

  // Error and validation colors
  static const Color error = Color.fromARGB(255, 255, 77, 77);
  static const Color success = Color(0xFF388E3C);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

  // Neutral Shades
  static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);
  static const Color grey = Color(0xFFE0E0E0);
  static const Color softGrey = Color(0xFFF4F4F4);
  static const Color lightGrey = Color(0xFFF9F9F9);
  static const Color white = Color(0xFFFFFFFF);
}
