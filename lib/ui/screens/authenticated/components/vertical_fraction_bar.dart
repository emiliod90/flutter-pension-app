import 'package:flutter/material.dart';

class VerticalFractionBar extends StatelessWidget {
  VerticalFractionBar({this.color, this.fraction});

  final Color color;
  final double fraction;

  @override
  Widget build(BuildContext context) {
    // TODO: use paint?
    return SizedBox(
        height: 32.0,
        width: 4.0,
        child: Column(children: <Widget>[
          SizedBox(
            height: (1 - fraction) * 32.0,
            child: Container(
              color: Colors.grey[300],
            ),
          ),
          SizedBox(
            height: fraction * 32.0,
            child: Container(color: color),
          ),
        ]));
  }
}
