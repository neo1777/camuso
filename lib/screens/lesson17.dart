import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> getData(BuildContext context) async {
    //scegliere la data
    var fDate = await showDatePicker(
        context: context,
        initialDate: _selectedDate,
        firstDate: DateTime(2018),
        lastDate: DateTime(2030));

    if (fDate != null) {
      setState(() => _selectedDate = fDate);
    }
  }

  Future<void> getTime(BuildContext context) async {
    //scegliere la data
    var fTime =
        await showTimePicker(context: context, initialTime: _selectedTime);

    if (fTime != null) {
      setState(() => _selectedTime = fTime);
    }
  }

  @override
  Widget build(BuildContext) {
    final DateFormat df = DateFormat('dd/MM/yyy');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(df.format(_selectedDate)),
              IconButton(
                  icon: Icon(Icons.date_range),
                  onPressed: () => getData(context))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(_selectedTime.format(context)),
              IconButton(
                  icon: Icon(Icons.timer_sharp),
                  onPressed: () => getTime(context))
            ],
          ),
        ],
      ),
    );
  }
}
