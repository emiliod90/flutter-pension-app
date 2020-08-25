import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertemplateapp/ui/charts/pie_chart.dart';
//import 'package:fluttertemplateapp/ui/charts/stacked_line.dart';

import 'components/fraction_tile.dart';

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
              Container(
                height: size.height * 0.45,
                padding: EdgeInsets.all(4),
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(12.0),
                            topRight: const Radius.circular(12.0),
                            bottomLeft: const Radius.circular(12.0),
                            bottomRight: const Radius.circular(12.0))),
                    child: DonutPieChart.withSampleData(),
                  ),
                ),
              ),
              FractionTile(
                indicatorFraction: 0.45,
                indicatorColor: Color(0xffe66e00),
                title: "Nest 2055 Retirement Fund",
                subtitle: "Nest",
                amount: "£8,100",

              ),
              FractionTile(
                indicatorFraction: 0.35,
                indicatorColor:Color(0xff792a86),
                title: "FTSE Developed World ETF",
                subtitle: "Vanguard",
                amount: "£6,300",
              ),
              FractionTile(
                indicatorFraction: 0.15,
                indicatorColor: Color(0xff009ddb),
                title: "MSCI China ETF",
                subtitle: "HSBC",
                amount: "£2,700",
              ),
              FractionTile(
                indicatorFraction: 0.05,
                indicatorColor: Color(0xff00a0a4),
                title: "UK Gilts 0 - 5yr ETF",
                subtitle: "iShares",
                amount: "£900",
              ),

              /*Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.3,
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
                          child: StackedAreaCustomColorLineChart.withSampleData(),

                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: size.height * 0.3,
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
                          child: StackedAreaCustomColorLineChart.withSampleData(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),*/
              /*Padding(
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
*/
            ],
          ),
        ),
      ),
    );
  }
}
