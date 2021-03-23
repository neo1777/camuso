import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  final String myText = 'Hello World 1777 !!';
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.orange,
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              this.myText,
              textDirection: TextDirection.ltr,
            ),
            Text(
              this.myText,
              textDirection: TextDirection.ltr,
            )
          ],
        ));
  }
}
