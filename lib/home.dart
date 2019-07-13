
import 'package:flutter/material.dart';
import 'package:theme_sample/const.dart';

typedef void ThemeChangeCallback(AppThemeStyle style);

class HomePage extends StatelessWidget {
  final ThemeChangeCallback callback;

  HomePage(this.callback);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Column(
            children: <Widget>[
              FlatButton(
                child: Text('白天模式'),
                onPressed: () => callback(AppThemeStyle.bright),
              ),
              SizedBox(width: 10),
              FlatButton(
                child: Text('夜晚模式'),
                onPressed: () => callback(AppThemeStyle.dark),
              )
            ],
            mainAxisAlignment: MainAxisAlignment.start,
          ),
        ),
      ),
    );
  }
}