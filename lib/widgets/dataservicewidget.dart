import 'package:camuso/services/dataservice.dart';
import 'package:flutter/material.dart';

class DataServiceWidget extends InheritedWidget {
  DataServiceWidget({Key? key, required this.child})
      : super(key: key, child: child);
  final Widget child;
  final DataService dataservice = DataService();
  static DataServiceWidget of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<DataServiceWidget>()
        as DataServiceWidget);
  }

  @override
  bool updateShouldNotify(DataServiceWidget oldWidget) {
    return true;
  }
}
