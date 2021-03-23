import 'package:flutter/material.dart';
import 'screens/lesson28.dart';

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Keys demo 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyLesson28Page(title: 'Keys Demo'),
    );
  }
}
