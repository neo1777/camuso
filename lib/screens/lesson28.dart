import 'dart:math';

import 'package:flutter/material.dart';

class MyLesson28Page extends StatefulWidget {
  MyLesson28Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson28Page> {
  List<Widget> tiles = [];

  void swapTile() {
    setState(() {
      tiles.insert(1, tiles.removeAt(0));
    });
  }

  @override
  void initState() {
    super.initState();
    tiles = [
      //StateLessColorWidget(color: Colors.orange),
      //StateLessColorWidget(color: Colors.blue),
      Padding(
        padding: const EdgeInsets.all(8.0),
        //key: UniqueKey(),
        key: Key('sono arancio'),
        child: StateFullColorWidget(
          color: Colors.orange,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        //key: UniqueKey(),
        key: Key('sono blu'),
        child: StateFullColorWidget(
          color: Colors.blue,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.refresh), onPressed: swapTile)
        ],
      ),
      body: Row(
        children: tiles,
      ),
    );
  }
}

class StateLessColorWidget extends StatelessWidget {
  StateLessColorWidget({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: this.color,
    );
  }
}

class StateFullColorWidget extends StatefulWidget {
  StateFullColorWidget({Key? key, required this.color}) : super(key: key);
  final Color color;
  @override
  _StateFullColorWidgetState createState() => _StateFullColorWidgetState(color);
}

class _StateFullColorWidgetState extends State<StateFullColorWidget> {
  Color color;
  _StateFullColorWidgetState(this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      color: this.color,
      child: Text(Random().nextInt(10000).toString()),
    );
  }
}
