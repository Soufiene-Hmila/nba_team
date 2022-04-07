import 'package:flutter/material.dart';
import 'package:nba_team/screen/screen_home.dart';
import 'package:nba_team/style/app_theme_mode.dart';

void main() {
  runApp(MaterialApp(
      title: 'NBA Team',
      debugShowCheckedModeBanner: false,
      theme: AppThemeMode.lightTheme,
      home: const ScreenHome(),
    )
  );
}


