import 'package:flutter/material.dart';

class DefaultTheme {
  DefaultTheme._();
  static ThemeData get theme => ThemeData(
        primaryColor: const Color(0xff5C77CE),
        primaryColorLight: const Color(0xffABC8F7),
        backgroundColor: Colors.grey[100],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xff5C77CE),
          ),
        ),
      );
}
