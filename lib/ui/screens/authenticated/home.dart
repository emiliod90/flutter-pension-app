import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/gauge.dart';
import 'package:fluttertemplateapp/ui/charts/simple_chart.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';
import 'package:fluttertemplateapp/ui/charts/combo_chart.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xff28465f),
        title: Text(
          "Nest",
          style: Theme.of(context).textTheme.headline6,
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
                      color: Color(0xff28465f),
                    ),
                    Positioned(
                      top: 45,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(45.0),
                                topRight: Radius.circular(45.0),
                              ),
                              color: Color(0xfff5f5f5)),
                          height: size.height * 0.4,
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
                            decoration:
                                BoxDecoration(color: Colors.transparent),
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
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("+71%", style: TextStyle(fontSize: 18),),
                                    Text("target score")
                                  ],
                                ),
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
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("+8.1%", style: TextStyle(fontSize: 18),),
                                    Text("since '17")
                                  ],
                                ),
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
                                  //border: Border.all(color: Color(0xff28465f), width: 2),
                                  color: Colors.white),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("£-545", style: TextStyle(fontSize: 18),),
                                    Text("Shortfall")
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: size.width * 0.5,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            //color: Color(0xff751248),
                            borderRadius: BorderRadius.only(
                              topLeft: const Radius.circular(12.0),
                              topRight: const Radius.circular(12.0),
                              bottomLeft: const Radius.circular(12.0),
                              bottomRight: const Radius.circular(12.0),
                            ),
                          ),
                          child: Center(
                            child: OrdinalComboBarLineChart.withSampleData(),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: size.width * 0.5,
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              //color: Color(0xff4f2a5f),
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  topRight: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0))),
                          child: Center(
                            child: StackedFillColorBarChart.withSampleData(),
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
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0),
                          ),
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://source.unsplash.com/random/800x800"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
