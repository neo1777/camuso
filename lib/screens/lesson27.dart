import 'package:flutter/material.dart';

class MyLesson27Page extends StatefulWidget {
  MyLesson27Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson27Page> {
  var stateStars = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: null);
  }
}
