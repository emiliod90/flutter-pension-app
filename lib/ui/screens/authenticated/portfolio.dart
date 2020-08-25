import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertemplateapp/ui/charts/stacked_chart.dart';
import 'package:fluttertemplateapp/ui/charts/stacked_line.dart';
import 'package:fluttertemplateapp/ui/screens/authenticated/pie_chart.dart';

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Portfolio"),
        centerTitle: true,
        backgroundColor: Color(0xff28465f),
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
                      child: PieOutsideLabelChart.withSampleData(),
                    ),
                  ),
                ),
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
                      child: StackedAreaCustomColorLineChart.withSampleData(),
                    ),
                  ),
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
                                  bottomRight:
                                  const Radius.circular(12.0))),

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
                                  bottomRight:
                                  const Radius.circular(12.0))),
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
