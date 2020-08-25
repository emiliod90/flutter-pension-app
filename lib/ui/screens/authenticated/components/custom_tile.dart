import 'package:flutter/material.dart';

class CustomTile extends StatelessWidget {
  final String title;
  final Color primaryColor;
  final Color secondaryColor;
  final String subtitle;
  final String semanticsLabel;
  final String amount;
  final Widget suffix;

  const CustomTile(
      {Key key,
        this.title,
        this.subtitle,
        this.semanticsLabel,
        this.amount,
        this.primaryColor,
        this.secondaryColor,
        this.suffix})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title, style: TextStyle(fontSize: 18, color: primaryColor),),
                          Text(
                            "$subtitle",
                            style: TextStyle(
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.normal,
                              color: secondaryColor
                            ),
                          )
                        ],
                      ),
                      Text(
                        amount,
                        style: TextStyle(fontSize: 20, color: primaryColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  constraints: BoxConstraints(minWidth: 32),
                  padding: EdgeInsetsDirectional.only(start: 12),
                  child: suffix,
                )
              ],
            ),
          ),
          /*Divider(
            height: 1,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          )*/
        ],
      ),
    );
  }
}
