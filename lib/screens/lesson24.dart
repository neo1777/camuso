import 'package:flutter/material.dart';

class MyLesson24Page extends StatefulWidget {
  MyLesson24Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson24Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              // padding: EdgeInsets.all(8),
              onPressed: () {},
              child: Text(
                'Flat button',
                style: TextStyle(fontSize: 20),
              ),
              // color: Colors.red,
              // splashColor: Colors.amber,
              textTheme: ButtonTextTheme.primary,
            ),
            IconButton(icon: Icon(Icons.video_call), onPressed: () {})
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: Icon(Icons.add),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        elevation: 10,
        label: Text('Like'),
        icon: Icon(Icons.thumb_up),
      ),
    );
  }
}
