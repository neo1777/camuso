import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox demo 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(title: 'CheckBox & Radio'),
    );
  }
}

enum OpzioniSesso { maschio, femmina }
enum OpzioniLavoro { disoccupato, occupato, pensionato }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  dynamic cbState = false;
  OpzioniSesso sessoScelta = OpzioniSesso.maschio;
  OpzioniLavoro lavoroScelta = OpzioniLavoro.occupato;
  void onRadioSessoTap(newValue) {
    setState(() {
      sessoScelta = newValue;
    });
  }

  void onRadioLavoroTap(newValue) {
    setState(() {
      lavoroScelta = newValue;
    });
  }

  @override
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
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('CheckBox demo'),
                Checkbox(
                  tristate: true,
                  onChanged: (v) {
                    setState(() {
                      cbState = v;
                    });
                  },
                  value: cbState,
                  checkColor: Colors.amber,
                  autofocus: true,
                ),
                Checkbox(
                  tristate: true,
                  onChanged: (v) {
                    setState(() {
                      cbState = v;
                    });
                  },
                  value: cbState,
                  checkColor: Colors.amber,
                  autofocus: true,
                )
              ],
            ),
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Radio(
                value: OpzioniSesso.maschio,
                groupValue: sessoScelta,
                onChanged: onRadioSessoTap,
              ),
              Radio(
                value: OpzioniSesso.femmina,
                groupValue: sessoScelta,
                onChanged: onRadioSessoTap,
              ),
            ],
          )),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Radio(
                value: OpzioniLavoro.disoccupato,
                groupValue: lavoroScelta,
                onChanged: onRadioLavoroTap,
              ),
              Radio(
                value: OpzioniLavoro.occupato,
                groupValue: lavoroScelta,
                onChanged: onRadioLavoroTap,
              ),
              Radio(
                value: OpzioniLavoro.pensionato,
                groupValue: lavoroScelta,
                onChanged: onRadioLavoroTap,
              ),
            ],
          )),
          RaisedButton(
              child: Text('pensionato'),
              onPressed: () {
                setState(() {
                  lavoroScelta = OpzioniLavoro.pensionato;
                });
              })
        ],
      ),
    );
  }
}
