import 'package:flutter/material.dart';

/*void main(List<String> args) {
  runApp(MyApp1777());
}*/

void main() => runApp(MyApp1777());

class MyApp1777 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Budget 1777',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: B1777HomePage(),
    );
  }
}

class B1777HomePage extends StatefulWidget {
  B1777HomePage({Key? key}) : super(key: key);
  final String title = 'Budget 1777';
  @override
  _B1777HomePageState createState() => _B1777HomePageState();
}

class _B1777HomePageState extends State<B1777HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          IconButton(icon: Icon(Icons.adaptive.more_sharp), onPressed: () {}),
        ],
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (_index) {
          setState(() {
            _selectedIndex = _index;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'list'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Dettaglio'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'oggi'),
          BottomNavigationBarItem(icon: Icon(Icons.apps), label: 'altro'),
          BottomNavigationBarItem(icon: Icon(Icons.get_app), label: 'altro2'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        tooltip: 'Aggiungi spesa',
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        child: Container(
          color: Colors.yellow,
          padding: EdgeInsets.fromLTRB(16, 32, 16, 16),
          child: Text('demo menu'),
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //     color: Colors.cyanAccent,
      //     child: Container(
      //       color: Colors.cyan,
      //       height: 50,
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         children: [
      //           FlatButton(onPressed: () {}, child: Text('Elenco')),
      //           FlatButton(onPressed: () {}, child: Text('Dettaglio')),
      //           FlatButton(onPressed: () {}, child: Text('Totali')),
      //         ],
      //       ),
      //     )),
    );
  }
}
