import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/screens/unauthenticated/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color color, textColor;
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: color,
      child: TextField(
        onChanged: onChanged,
        style: TextStyle(
            fontSize: 18,
            color: textColor
        ),
        obscureText: true,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            icon: Icon(icon),
            suffixIcon: Icon(Icons.remove_red_eye)),
      ),
    );
  }
}
