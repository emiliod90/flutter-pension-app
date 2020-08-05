import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/unauthenticated/components/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final Color color, textColor;
  final ValueChanged<String> onSubmitted;
  const RoundedInputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onSubmitted, this.color, this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      color: color,
      child: TextField(
        onSubmitted: onSubmitted,
        style: TextStyle(
            fontSize: 18,
            color: textColor
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          icon: Icon(icon),
        ),
      ),
    );
  }
}
