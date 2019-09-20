import 'package:flutter/material.dart';
import 'package:flamo/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '小小狼人殺',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(title: '歡迎狼人殺🤪'),
    );
  }
}
