import 'package:flutter/material.dart';

class FiveStars extends StatefulWidget {
  final void Function(int value) onPressed;
  final int value;
  FiveStars({required this.onPressed, this.value = 0, Key? key})
      : super(key: key);
  @override
  _FiveStarsState createState() => _FiveStarsState();
}

class _FiveStarsState extends State<FiveStars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return InkWell(
            child: getStars(index), onTap: () => widget.onPressed(index));
      }),
    );
  }

  Icon getStars(int pos) {
    if (pos <= widget.value) {
      return Icon(
        Icons.star,
        color: Colors.orange,
      );
    } else {
      return Icon(
        Icons.star_border,
        color: Colors.grey,
      );
    }
  }
}
