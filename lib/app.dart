import 'package:flutter/material.dart';
import 'package:theme_sample/const.dart';
import 'package:theme_sample/home.dart';

/// 根widget
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeData _themeData = ThemeData.light();

  void handleThemeChanged(AppThemeStyle style) {
    print('切换主题');
    setState(() {
      if (style == AppThemeStyle.bright) {
        _themeData = ThemeData.light();
      } else {
        _themeData = ThemeData.dark();
      }
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(handleThemeChanged),
      theme: _themeData,
    );
  }
}