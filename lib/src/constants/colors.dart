import 'dart:ui' show Color;
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AppColors {
  AppColors._();
  static const MaterialColor primary = MaterialColor(
    _primaryColor,
    <int, Color>{
      50: Color(0xFFe2f2ff),
      100: Color(0xFFbaddff),
      200: Color(0xFF8bc8ff),
      300: Color(0xFF56b2ff),
      400: Color(0xFF29a0ff),
      500: Color(0xFF008fff),
      600: Color(0xFF1a80ff),
      700: Color(_primaryColor),
      800: Color(0xFF2d59e4),
      900: Color(0xFF3335c4),
    },
  );

  static const MaterialColor secondary = MaterialColor(
    _secondaryColor,
    <int, Color>{
      50: Color(_secondaryColor),
      100: Color(0xFFbbddfe),
      200: Color(0xFF91c9fc),
      300: Color(0xFF68b4f8),
      400: Color(0xFF4aa3f7),
      500: Color(0xFF3494f4),
      600: Color(0xFF3286e6),
      700: Color(0xFF2e74d3),
      800: Color(0xFF2a63c0),
      900: Color(0xFF2444a0),
    },
  );
  static const int _primaryColor = 0xFF008fff;
  // static const int _primaryColor = 0xFF276DF7;
  static const int _secondaryColor = 0xFFe2f2ff;
  static const Color background = Color(0xFFEDEDED);
  static const Color backgroundDark = Color(0xff303030);
  static const Color text = Colors.black87;
  static const Color line = Colors.black12;
  static List<Color> primaryGradient = [primary, secondary.shade900];

  static const Color success = Color(0xFF009944);
  static const Color error = Color(0xFFFF7777);
  static const Color warning = Color(0xFFf0541e);
  static const Color information = Color(0xFF63c0df);
  static const Color hint = Color(0xFF959595);
}

///Colors Generated from http://mcg.mbitson.com/
