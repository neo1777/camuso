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
        title: Text('Posizionamento'),
      ),
      body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 16),
                child: Text('LOGIN'),
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Text('USERNAME')),
                      Flexible(child: TextField())
                    ],
                  )),
              Container(
                  margin: EdgeInsets.only(bottom: 16),
                  child: Row(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(right: 8),
                          child: Text('PASSWORD')),
                      Flexible(
                          child: TextField(
                        obscureText: true,
                      ))
                    ],
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  RaisedButton(child: Text('LOGIN'), onPressed: () {})
                ],
              )
            ],
          )),
    );
  }
}
