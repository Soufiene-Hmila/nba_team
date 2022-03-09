
import 'package:flutter/material.dart';

class AppThemeMode {

  static const primaryColor = Color(0xFF17408B);
  static const secondaryColor = Color(0xFFC9082A);
  static const scaffoldBackground = Color(0xFF17408B);
  static const containerBackground = Color(0xFFEEF0F3);
  static const errorColor = Color(0xFFD95454);
  static const successColor = Color(0xFF6CC46C);
  static const greyColor = Color(0xA9727272);
  static const textColor = Color(0xFF8F9BB3);

  // EEF0F3
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFF17408B).withOpacity(0.5),
    primaryColor: Colors.white,
    backgroundColor: const Color(0xFF17408B),
    colorScheme: const ColorScheme.dark(
      surface: Color(0xFFC9082A),
      background: Color(0xFF17408B),
      primary: Color(0xFFC9082A),
      secondary: Color(0xFFC9082A),
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: Colors.white,),
  );

}