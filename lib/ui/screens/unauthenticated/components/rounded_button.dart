import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;

  const RoundedButton({
    Key key,
    this.text,
    this.press,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(top: 20),
      width: size.width * 0.8,
      child: FlatButton(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(29.0),
            side: BorderSide(color: color)),
        onPressed: press,
        child: Text(
            text.toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              color: textColor
            ),
        ),
      ),
    );
  }
}