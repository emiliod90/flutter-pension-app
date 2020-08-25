import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/components/vertical_fraction_bar.dart';

class FractionTile extends StatelessWidget {
  final Color indicatorColor;
  final double indicatorFraction;
  final String title;
  final String subtitle;
  final String semanticsLabel;
  final String amount;
  final Widget suffix;

  const FractionTile(
      {Key key,
        this.indicatorColor,
        this.indicatorFraction,
        this.title,
        this.subtitle,
        this.semanticsLabel,
        this.amount,
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
                Container(
                  alignment: Alignment.center,
                  //height: ,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: VerticalFractionBar(
                    color: indicatorColor,
                    fraction: indicatorFraction,
                  ),
                ),
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(title, style: TextStyle(fontSize: 18),),
                          Text(
                            subtitle,
                            style: TextStyle(
                              fontFamily: "Source Sans",
                              fontWeight: FontWeight.normal,
                              fontSize: 16
                            ),
                          )
                        ],
                      ),
                      Text(
                        amount,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
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
          Divider(
            height: 1,
            indent: 16,
            endIndent: 16,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
