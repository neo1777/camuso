import 'package:flutter/material.dart';

class MyLesson23Page extends StatefulWidget {
  MyLesson23Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson23Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.update,
                    color: Colors.blue,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      'flatButton',
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                ],
              )),
          RaisedButton.icon(
              onPressed: () {},
              icon: Icon(Icons.update),
              label: Text(
                'update',
                style: TextStyle(color: Colors.orange),
              ))
        ],
      ),
    );
  }
}
