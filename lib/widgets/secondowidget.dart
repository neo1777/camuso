import 'package:camuso/utils/utils.dart';
import 'package:camuso/widgets/terzowidget.dart';
import 'package:flutter/material.dart';

class SecondoWidget extends StatefulWidget {
  SecondoWidget({Key? key}) : super(key: key);
  @override
  _SecondoWidgetState createState() => _SecondoWidgetState();
}

class _SecondoWidgetState extends State<SecondoWidget> {
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
                setState(() {
                  wdgSize = context.size;
                });
              },
              child: Text('Get size')),
          TerzoWidget(),
        ],
      ),
    );
  }
}
