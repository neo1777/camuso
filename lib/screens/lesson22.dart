import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch demo 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'Switch & Slider'),
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
  var switchState = false;
  int sliderValue = 0;

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
            Text('Switch demo'),
            Switch(
                value: switchState,
                //activeColor: Colors.yellow,
                activeTrackColor: Colors.brown,
                //inactiveThumbColor: Colors.pink,
                inactiveTrackColor: Colors.red,
                activeThumbImage:
                    NetworkImage('https://picsum.photos/id/111/100/100'),
                inactiveThumbImage:
                    NetworkImage('https://picsum.photos/id/112/100/100'),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                dragStartBehavior: DragStartBehavior.down,
                onChanged: (v) {
                  setState(() {
                    switchState = v;
                  });
                }),
            Text('Slider demo'),
            Slider(
                value: sliderValue.toDouble(),
                min: 0,
                max: 100,
                divisions: 100,
                label: 'trascinami! Ti ringrazio $sliderValue volte ;)',
                onChanged: (dynamic v) {
                  setState(() {
                    sliderValue = v.round();
                  });
                }),
            Text('Il valore dello slider è $sliderValue'),
          ],
        ),
      ),
    );
  }
}
