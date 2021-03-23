import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      margin: const EdgeInsets.only(top: 26),
      padding: const EdgeInsets.all(16),
      alignment: Alignment.topCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.ltr,
        children: <Widget>[
          Container(
              color: Colors.blue,
              child: Text(
                'Testo breve',
                textDirection: TextDirection.ltr,
              )),
          Container(
              color: Colors.green,
              child: Text(
                'Testo abbastanza lungo',
                textDirection: TextDirection.ltr,
              )),
          Container(
            color: Colors.yellow,
            child: Text(
              'Testo meno breve',
              //style: TextStyle(color: Colors.black),
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}
