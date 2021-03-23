import 'package:flutter/material.dart';

class MyLesson25Page extends StatefulWidget {
  MyLesson25Page({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson25Page> {
  var dropValue = 'Partita IVA';
  var _selected;
  bool cbScelta = false;

  final List<Colore> myItems = <Colore>[
    Colore(1, 'Nero', Colors.black),
    Colore(2, 'Rosso', Colors.red),
    Colore(3, 'Blu', Colors.blue),
    Colore(4, 'Verde', Colors.green),
  ];

  Colore? ddbValue;

  dropValueChange(value) {
    setState(() {
      dropValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            DropdownButton(
              value: dropValue,
              items: [
                DropdownMenuItem(
                    value: 'Partita IVA', child: Text('Partita IVA')),
                DropdownMenuItem(
                    value: 'Cod Fiscale', child: Text('Cod Fiscale'))
              ],
              onChanged: (value) {
                dropValueChange(value);
              },
            ),
            DropdownButton<Colore>(
              disabledHint: Text('Disabilitato'),
              hint: Text('Seleziona colore'),
              icon: Icon(Icons.palette),
              isExpanded: false,
              value: ddbValue,
              items: myItems.map((Colore item) {
                return DropdownMenuItem<Colore>(
                    value: item,
                    child: Text(
                      item.nome,
                      style: TextStyle(color: item.valore),
                    ));
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  ddbValue = newValue;
                });
              },
            ),
            PopupMenuButton<PaginaEnum>(
              child: Text('Naviga in ...'),
              itemBuilder: (BuildContext context) =>
                  <PopupMenuEntry<PaginaEnum>>[
                const PopupMenuItem<PaginaEnum>(
                    value: PaginaEnum.home, child: Text('Home Page')),
                const PopupMenuItem<PaginaEnum>(
                    value: PaginaEnum.page1, child: Text('Pagina 1')),
                const PopupMenuItem<PaginaEnum>(
                    value: PaginaEnum.page2, child: Text('Pagina2')),
              ],
              onSelected: (newValue) {
                setState(() {
                  _selected = newValue;
                });
              },
            ),
            PopupMenuButton(
              child: Text('Menu'),
              itemBuilder: (context) {
                return <PopupMenuEntry>[
                  PopupMenuItem(child: Text('Azione1')),
                  PopupMenuDivider(),
                  CheckedPopupMenuItem(
                    value: 'scelta',
                    child: Text('scelta'),
                    checked: cbScelta,
                  )
                ].toList();
              },
              onSelected: (dynamic cbValue) {
                if (cbValue == 'scelta') {
                  setState(() {
                    cbScelta = !cbScelta;
                  });
                  return;
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

class Colore {
  int id;
  String nome;
  Color valore;

  Colore(this.id, this.nome, this.valore);
}

enum PaginaEnum { home, page1, page2 }
