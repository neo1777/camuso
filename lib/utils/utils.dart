import 'package:flutter/material.dart';

abstract class Utils {
  static String getInfo(BuildContext context) {
    return 'HashCode: ${context.hashCode}\r\n'
        'Type: ${context.widget.runtimeType}';
  }

  static String getSize(Size size) {
    return 'Size: ${size.width.truncate()}'
        ',${size.height.truncate()}';
  }
}
