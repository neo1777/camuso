import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Ratio lesson'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var width;
  var heigth;
  var devicePixelRatio;
  var aspectRatio;
  var orientation;

  @override
  void didChangeDependencies() {
    this.width = MediaQuery.of(context).size.width.toInt();
    this.heigth = MediaQuery.of(context).size.height.toInt();
    this.devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    this.aspectRatio =
        MediaQuery.of(context).size.aspectRatio.toStringAsFixed(4);
    this.orientation = MediaQuery.of(context).orientation;
    super.didChangeDependencies();
  }

  Widget build(BuildContext context) {
    // int width = MediaQuery.of(context).size.width.toInt();
    // int heigth = MediaQuery.of(context).size.height.toInt();
    // double devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
    // String aspectRatio =
    //     MediaQuery.of(context).size.aspectRatio.toStringAsFixed(4);
    // Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: DecoratedBox(
              decoration: BoxDecoration(
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(6))),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: <Widget>[
                            Text('Width:'),
                            Text('Heigth:'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(width.toString()),
                            Text(heigth.toString()),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text('PR:'),
                            Text('AR:'),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Text(devicePixelRatio.toString()),
                            Text(aspectRatio),
                          ],
                        ),
                      ],
                    ),
                    Text(orientation.toString()),
                    Image.asset('contents/images/marvel_logo.png'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            width: 384,
            height: 171,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Image.asset('contents/images/marvel_logo.png'),
            ),
          )
        ],
      ),
    );
  }
}
