import 'package:flutter/material.dart';

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
      home: MyHomePage(title: 'Text Widget'),
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
  Utente utente = Utente();
  TextEditingController usrController = TextEditingController();
  TextEditingController pswController = TextEditingController();
  bool isLoginDisable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  icon: Icon(Icons.account_circle),
                  labelText: 'Username'),
              controller: usrController,
              //onChanged: _onChanged,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  icon: Icon(Icons.visibility_off),
                  labelText: 'Password'),
              obscureText: true,
              controller: pswController,
              //onChanged: _onChanged,
            ),
          ),
          RaisedButton(
              child: Text('Login'),
              onPressed: isLoginDisable ? null : _loginPressed)
        ],
      )),
    );
  }

  void _loginPressed() {
    setState(() {
      utente.username = usrController.text;
      utente.password = pswController.text;
    });
  }

  void _onChanged(String value) {
    setState(() {
      isLoginDisable =
          (usrController.text.length == 0 || pswController.text.length == 0);
    });
  }

  @override
  void initState() {
    super.initState();
    usrController.addListener(formOnChanged);
    usrController.addListener(removeSomeChar);
    pswController.addListener(formOnChanged);
  }

  void formOnChanged() {
    setState(() {
      isLoginDisable =
          (usrController.text.length == 0 || pswController.text.length == 0);
    });
  }

  void removeSomeChar() {
    final text = usrController.text
        .toLowerCase()
        .replaceAll('@', '')
        .replaceAll('#', '');
    usrController.value = usrController.value.copyWith(
        text: text,
        selection:
            TextSelection(baseOffset: text.length, extentOffset: text.length),
        composing: TextRange.empty);
  }
}

class Utente {
  String? username;
  String? password;
}
