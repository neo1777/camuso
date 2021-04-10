import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyLesson30Page extends StatefulWidget {
  final String title;
  final DateFormat _df = DateFormat('dd/MM/yyyy');
  MyLesson30Page({Key? key, required this.title}) : super(key: key);
  _MyLesson30PageState createState() => _MyLesson30PageState();
}

class _MyLesson30PageState extends State<MyLesson30Page> {
  final _formKey = GlobalKey<FormState>();
  final _pswKey = GlobalKey<FormFieldState>();
  final RegistaUtente utente = RegistaUtente();
  final DateFormat _df = DateFormat('dd/MM/yyyy');
  final DateTime _selectedDate = DateTime.now();
  Future<void> getData(context) async {
    //scegliere la data
    var fDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(2030));
    //aggiornare lo stato
    if (fDate != null) {
      setState(() {
        utente.nascita = fDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: ListView(
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(labelText: 'Nome'),
                  onSaved: (value) => utente.nome = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obbligatorio';
                    } else if (value.length < 3) {
                      return 'Nome non valido';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Cognome'),
                  onSaved: (value) => utente.nome = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obbligatorio';
                    } else if (value.length < 3) {
                      return 'Cognome non valido';
                    }
                    return null;
                  },
                ),
                Row(
                  children: <Widget>[
                    Text('Zona'),
                    Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 2,
                      child: DropdownButtonFormField<ZonaEnum>(
                        value: utente.zona,
                        onChanged: (value) {
                          setState(() {
                            utente.zona = value!;
                          });
                        },
                        onSaved: (value) => utente.zona = value!,
                        items: [
                          DropdownMenuItem(
                            child: Text('Nord'),
                            value: ZonaEnum.nord,
                          ),
                          DropdownMenuItem(
                            child: Text('Cento'),
                            value: ZonaEnum.centro,
                          ),
                          DropdownMenuItem(
                            child: Text('Sud'),
                            value: ZonaEnum.sud,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: Text('Data di nascita')),
                    Spacer(),
                    Text(utente.nascita == null
                        ? '--/--/----'
                        : widget._df.format(utente.nascita!)),
                    IconButton(
                        icon: Icon(Icons.date_range),
                        onPressed: () => getData(context))
                  ],
                ),
                TextFormField(
                  decoration: InputDecoration(labelText: 'Email'),
                  onSaved: (value) => utente.email = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obbligatorio';
                    } else if (!RegExp(
                            r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'Email non valida';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  key: _pswKey,
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Password'),
                  onSaved: (value) => utente.password = value,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Campo obbligatorio';
                    } else if (value.length < 8) {
                      return 'la password deve essere lunga almeno 8 caratteri';
                    }
                    return null;
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(labelText: 'Conferma password'),
                  onEditingComplete: null,
                  onSaved: (value) => utente.rePassword = value,
                  validator: (value) {
                    if (value != _pswKey.currentState!.value) {
                      return 'Password non confermata';
                    }
                    return null;
                  },
                ),
                Row(
                  children: <Widget>[
                    Text('Registrati alla newsletter'),
                    Spacer(),
                    Checkbox(
                        value: utente.newsletter,
                        onChanged: (value) {
                          setState(() {
                            utente.newsletter = value!;
                          });
                        })
                  ],
                ),
                RaisedButton(
                    child: Text('Registra'),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        print('Nessun errore');
                        _formKey.currentState!.save();
                      }
                    })
              ],
            ),
          )),
    );
  }
}

enum ZonaEnum { nord, centro, sud }

class Utente {
  String? nome;
  String? cognome;
  ZonaEnum zona = ZonaEnum.centro;
  String? email;
  String? password;
  DateTime? nascita;
  bool newsletter = false;
}

class RegistaUtente extends Utente {
  String? rePassword;
}
