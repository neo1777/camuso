import 'package:flutter/material.dart';
import 'screens/lesson30.dart';
import './utils/utils.dart';

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(Utils.getInfo(context));
    return MaterialApp(
      title: 'Form demo 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyLesson30Page(title: 'Form Demo'),
    );
  }
}
