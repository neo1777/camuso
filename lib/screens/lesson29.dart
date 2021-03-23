import 'package:flutter/material.dart';
import '../utils/utils.dart';
import 'package:camuso/widgets/secondowidget.dart';
import 'package:camuso/widgets/dataservicewidget.dart';
import 'package:camuso/services/dataservice.dart';

class MyLesson29Page extends StatefulWidget {
  final String title;
  static final hpKey = GlobalKey<_MyHomePageState>();
  final DataService dataService = DataService();

  MyLesson29Page({Key? key, required this.title})
      : super(key: MyLesson29Page.hpKey);
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLesson29Page> {
  dynamic hsSize = Size(0, 0);
  String stato = 'Prima di sfruttare la closure';
  @override
  Widget build(BuildContext context) {
    String catturata = 'Sono stata catturata nella closure!';

    print(Utils.getInfo(context));
    return DataServiceWidget(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: <Widget>[
              Text(Utils.getInfo(context)),
              Text(Utils.getSize(hsSize)),
              Text(stato),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      hsSize = context.size;
                      stato = catturata;
                    });
                  },
                  child: Text('Get size')),
              SecondoWidget(),
            ]),
          ),
        ),
      ),
    );
  }
}
