import 'package:camuso/screens/lesson29.dart';
import 'package:camuso/utils/utils.dart';
import 'package:camuso/widgets/dataservicewidget.dart';
import 'package:flutter/material.dart';

class TerzoWidget extends StatefulWidget {
  TerzoWidget({Key? key}) : super(key: key);
  @override
  _TerzoWidgetState createState() => _TerzoWidgetState();
}

class _TerzoWidgetState extends State<TerzoWidget> {
  dynamic wdgSize = Size(0, 0);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: <Widget>[
          Text(Utils.getInfo(context)),
          Text(Utils.getSize(wdgSize)),
          FlatButton(
              onPressed: () {
                //final ds =
                //(MyLesson29Page.hpKey.currentWidget as MyLesson29Page)
                //.dataService;
                final ds = DataServiceWidget.of(context).dataservice;
                var lista = ds.getAll();
                setState(() {
                  wdgSize = context.size;
                });
              },
              child: Text('Get size'))
        ],
      ),
    );
  }
}
