import 'package:flutter/material.dart';

/// Simple pie chart with outside labels example.
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  DonutPieChart(this.seriesList, {this.animate});

  /// Creates a [PieChart] with sample data and no transition.
  factory DonutPieChart.withSampleData() {
    return new DonutPieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: true,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.PieChart(seriesList,
        animate: animate,

        defaultRenderer: new charts.ArcRendererConfig(arcWidth: 60, arcRendererDecorators: [
          new charts.ArcLabelDecorator(
              labelPosition: charts.ArcLabelPosition.inside)
        ]));
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final data = [
      new LinearSales(0, 8100, charts.ColorUtil.fromDartColor(Color(0xffe66e00))),
      new LinearSales(1, 6300, charts.ColorUtil.fromDartColor(Color(0xff792a86))),
      new LinearSales(2, 2700, charts.ColorUtil.fromDartColor(Color(0xff009ddb))),
      new LinearSales(3, 900, charts.ColorUtil.fromDartColor(Color(0xff00a0a4))),
    ];

    return [
      new charts.Series<LinearSales, int>(
        id: 'Sales',
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: data,
        // Set a label accessor to control the text of the arc label.
        labelAccessorFn: (LinearSales row, _) => '${row.sales}',
        colorFn: (LinearSales segment, _) => segment.color,
      )
    ];
  }
}

/// Sample linear data type.
class LinearSales {
  final int year;
  final int sales;
  final charts.Color color;

  LinearSales(this.year, this.sales, this.color);
}