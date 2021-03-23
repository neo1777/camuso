import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMaterialApp1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Demo'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(32),
          decoration: ShapeDecoration(
              color: Colors.green,
              shape: Border.all(color: Colors.black26, width: 5) +
                  Border.all(color: Colors.black38, width: 5) +
                  Border.all(color: Colors.black54, width: 5)),
          child: Text('DEMO'),
        ),

        // body: Center(
        //   child: Container(
        //     padding: EdgeInsets.all(32),
        //     color: Colors.green,
        //     child: Text('DEMO'),
        //   ),

        // child: Container(
        //   padding: EdgeInsets.all(32),
        //   decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(
        //           color: Colors.black, width: 2, style: BorderStyle.solid)),
        //   child: Text('DEMO'),
        // ),

        // child: DecoratedBox(
        //   decoration: BoxDecoration(
        //       color: Colors.green,
        //       border: Border.all(
        //           color: Colors.black, width: 2, style: BorderStyle.solid)),
        //   child: Padding(
        //     padding: EdgeInsets.all(32),
        //     child: Text('DEMO'),
        //   ),
        // ),
      ),
    );
  }
}
