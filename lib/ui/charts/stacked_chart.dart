/// Bar chart example
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

/// Example of a stacked bar chart with three series, each rendered with
/// different fill colors.
class StackedFillColorBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  StackedFillColorBarChart(this.seriesList, {this.animate});

  factory StackedFillColorBarChart.withSampleData() {
    return new StackedFillColorBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      // Configure a stroke width to enable borders on the bars.
      defaultRenderer: new charts.BarRendererConfig(
          groupingType: charts.BarGroupingType.stacked, strokeWidthPx: 2.0),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final desktopSalesData = [
      new OrdinalSales('2017', 25),
      new OrdinalSales('2018', 25),
      new OrdinalSales('2019', 45),
      new OrdinalSales('2020', 45),
    ];

    final tableSalesData = [
      new OrdinalSales('2017', 150),
      new OrdinalSales('2018', 150),
      new OrdinalSales('2019', 200),
      new OrdinalSales('2020', 200),
    ];

    final mobileSalesData = [
      new OrdinalSales('2017', 150),
      new OrdinalSales('2018', 150),
      new OrdinalSales('2019', 200),
      new OrdinalSales('2020', 200),
    ];

    return [
      // Blue bars with a lighter center color.
      new charts.Series<OrdinalSales, String>(
        id: 'Desktop',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: desktopSalesData,
        //colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xff751248)),
        //fillColorFn: (_, __) =>
        //charts.MaterialPalette.blue.shadeDefault.lighter,
      ),
      // Solid red bars. Fill color will default to the series color if no
      // fillColorFn is configured.
      new charts.Series<OrdinalSales, String>(
        id: 'Tablet',
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: tableSalesData,
        //colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xff28465f)),
        domainFn: (OrdinalSales sales, _) => sales.year,
      ),
      // Hollow green bars.
      new charts.Series<OrdinalSales, String>(
        id: 'Mobile',
        domainFn: (OrdinalSales sales, _) => sales.year,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: mobileSalesData,
        //colorFn: (_, __) => charts.ColorUtil.fromDartColor(Color(0xff005343)),
        //fillColorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
      ),
    ];
  }
}

/// Sample ordinal data type.
class OrdinalSales {
  final String year;
  final int sales;

  OrdinalSales(this.year, this.sales);
}