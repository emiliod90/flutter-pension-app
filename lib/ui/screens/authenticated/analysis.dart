import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/gauge.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';

import 'components/custom_tile.dart';

class AnalysisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Color(0xff28465f),
        title: Text(
          "Retirement Planner",
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        left: false,
        right: false,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(12.0),
                          topRight: const Radius.circular(12.0),
                          bottomLeft: const Radius.circular(12.0),
                          bottomRight: const Radius.circular(12.0))),
                  child: Column(
                    children: <Widget>[
                      CustomTile(
                        title: "Current Value",
                        subtitle: "13/08/20",
                        amount: "£3,420",
                        suffix: Icon(Icons.help_outline),
                      ),
                      CustomTile(
                        title: "Retirement Goal",
                        subtitle: "13/08/50",
                        amount: "£100,000",
                        suffix: Icon(Icons.help_outline),
                      ),
                      ListTile(
                        title: Text("Target"),
                        trailing: Text("71%"),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height * 0.38,
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
                      child: Stack(
                        children: <Widget>[
                          GaugeChart.withSampleData(),
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Monthly Target",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text(
                                  "£275",
                                  style: TextStyle(fontSize: 18),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: size.width*0.8,
                child: RaisedButton(
                  padding: EdgeInsets.all(12.0),
                  onPressed: () {},
                  child: Text("Update Projections", style: TextStyle(fontSize: 18),),


                ),
              ),
              Container(
                height: size.height * 0.45,
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
              ListTile(
                title: Text("Projected Illustration"),
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.2,
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
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.2,
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
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}