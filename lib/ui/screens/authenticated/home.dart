import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/gauge.dart';
import 'package:fluttertemplateapp/ui/charts/simple_chart.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';
import 'package:fluttertemplateapp/ui/charts/combo_chart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Nest",
          style: Theme
              .of(context)
              .textTheme
              .headline6,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
          left: false,
          right: false,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: size.height * 0.45,
                      width: size.width,
                      color: Colors.cyan,
                    ),
                    Positioned(
                      top: 45,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0),
                                topRight: Radius.circular(45.0),
                              ),
                              color: Colors.white),
                          height: size.height * 0.3,
                          width: size.width),
                    ),
                    Positioned(
                      top: 5.0,
                      right: 20.0,
                      left: 20.0,
                      child: Align(
                        alignment: Alignment.center,
                        child: Hero(
                          tag: 'Pot',
                          child: Container(
                            height: size.width * 0.6,
                            width: size.width * 0.6,
                            decoration: BoxDecoration(
                                color: Colors.transparent
                            ),
                            child: Stack(
                              children: <Widget>[
                                GaugeChart.withSampleData(),
                                Center(
                                  child: Text(
                                    "£3,420",
                                    style: TextStyle(
                                      fontSize: 22,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 210,
                      left: 16,
                      right: 16,
                      child: Container(
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(25.0),
                                  topRight: Radius.circular(25.0),
                                  bottomLeft: Radius.circular(25.0),
                                  bottomRight: Radius.circular(25.0),
                                ),
                                border: Border.all(color: Colors.white, width: 2),
                                color: Colors.cyan[700]
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  border: Border.all(color: Colors.white, width: 2),
                                  color: Colors.cyan[700]
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10),
                              padding: EdgeInsets.all(4.0),
                              height: 90,
                              width: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(25.0),
                                    topRight: Radius.circular(25.0),
                                    bottomLeft: Radius.circular(25.0),
                                    bottomRight: Radius.circular(25.0),
                                  ),
                                  border: Border.all(color: Colors.white, width: 2),
                                  color: Colors.cyan[700]
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * 0.4,
                    width: size.width,
                    padding: EdgeInsets.all(4),
                    child: Center(
                      child: Container(
                        //color: Colors.black12,
                        decoration: BoxDecoration(
                          //color: Colors.black45,
                            borderRadius: BorderRadius.only(
                                topLeft: const Radius.circular(12.0),
                                topRight: const Radius.circular(12.0),
                                bottomLeft: const Radius.circular(12.0),
                                bottomRight: const Radius.circular(12.0))),
                        child: StackedFillColorBarChart.withSampleData(),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.width * 0.5,
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.indigoAccent,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight:
                                    const Radius.circular(12.0))),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: size.width * 0.5,
                        padding: EdgeInsets.all(4),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.lightBlue,
                                borderRadius: BorderRadius.only(
                                    topLeft: const Radius.circular(12.0),
                                    topRight: const Radius.circular(12.0),
                                    bottomLeft: const Radius.circular(12.0),
                                    bottomRight:
                                    const Radius.circular(12.0))),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: size.width,
                  padding: EdgeInsets.all(4),
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black45,
                          borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0))),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
