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
                width: size.width * 0.8,
                child: RaisedButton(
                  color: Color(0xff751248),
                  padding: EdgeInsets.all(12.0),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForecastSettings(),
                          fullscreenDialog: true),
                    );
                  },
                  child: Text(
                    "Edit Projections",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 28,
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
                              color: Color(0xff4f2a5f),
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  topRight: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("Cautious (2%)",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                                Text(
                                  "£41,000",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "August 2050",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
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
                              color: Color(0xff005343),
                              borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(12.0),
                                  topRight: const Radius.circular(12.0),
                                  bottomLeft: const Radius.circular(12.0),
                                  bottomRight: const Radius.circular(12.0))),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Moderate (3.5%)",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                                Text(
                                  "£62,000",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                                Text(
                                  "August 2050",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          ),
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

class ForecastSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff751248),
        title: Text("Edit Details"),
        centerTitle: true,
      ),
      body: Container(
        //height: size.height * 0.45,
        padding: EdgeInsets.all(4),
        child: Center(
          child: Container(
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
                  title: "Retirement Date",
                  suffix: Icon(Icons.edit),
                  amount: "13/08/2050",
                  subtitle: "(or age)",
                ),
                CustomTile(
                  title: "Additional Pensions",
                  suffix: Icon(Icons.edit),
                  amount: "£4,300",
                  subtitle: "(Total £)",
                ),
                /*CustomTile(
                          title: "Salary",
                          suffix: Icon(Icons.edit),
                          amount: "£31,500",
                          subtitle: "",
                        ),*/
                CustomTile(
                  title: "Pension Contribution",
                  suffix: Icon(Icons.edit),
                  amount: "£275",
                  subtitle: "(% or amount)",
                ),
                CustomTile(
                  title: "Target Retirement Income",
                  suffix: Icon(Icons.edit),
                  amount: "£25K/year",
                  subtitle: "optional (annual)",
                ),
                ListTile(
                  title: Text(
                    "Assumptions",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black87,
                        fontFamily: "Open Sans"),
                  ),
                  onTap: () {},
                  leading: Icon(Icons.info_outline),
                  subtitle: Text(
                      "Learn about some of the basic assumptions included in the model"),
                  isThreeLine: true,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
