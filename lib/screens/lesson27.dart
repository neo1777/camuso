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
        body: Column(
          children: <Widget>[
            Icon(Icons.delete),
            Icon(Icons.delete_forever),
            Icon(Icons.delete_forever_outlined),
            Icon(Icons.delete_forever_rounded),
            Expanded(child: LayoutBuilder(builder: (context, constrains) {
              return GridView.count(
                crossAxisCount: constrains.biggest.width > 500 ? 8 : 4,
                children: <Widget>[
                  Icon(Icons.ac_unit),
                  Icon(Icons.sanitizer),
                  Icon(Icons.face),
                  Icon(Icons.hail),
                  Icon(Icons.radio_button_checked_outlined),
                  Icon(Icons.keyboard),
                ],
              );
            }))
          ],
        )
        // OrientationBuilder(
        //   builder: (context, orientation) {
        //     return GridView.count(
        //       crossAxisCount: orientation == Orientation.portrait ? 4 : 8,
        //       children: <Widget>[
        //         Icon(Icons.ac_unit),
        //         Icon(Icons.sanitizer),
        //         Icon(Icons.face),
        //         Icon(Icons.hail),
        //         Icon(Icons.radio_button_checked_outlined),
        //         Icon(Icons.keyboard),
        //       ],
        //     );
        //     // orientation == Orientation.portrait
        //     //     ? Text('Schermo verticale')
        //     //     : Text('Schermo orizzontale');
        //   },
        // ),
        );
  }
}
