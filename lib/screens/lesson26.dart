import 'package:camuso/screens/fivestars.dart';
import 'package:flutter/material.dart';

class MyLesson26Page extends StatefulWidget {
  MyLesson26Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson26Page> {
  var stateStars = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FiveStars(
          value: stateStars,
          onPressed: (int v) {
            setState(() {
              stateStars = v;
            });
          }),
    );
  }
}
