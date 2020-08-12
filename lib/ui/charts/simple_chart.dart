import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class SimpleTimeSeriesChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  SimpleTimeSeriesChart(this.seriesList, {this.animate});

  /// Creates a [TimeSeriesChart] with sample data and no transition.
  factory SimpleTimeSeriesChart.withSampleData() {
    return new SimpleTimeSeriesChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.TimeSeriesChart(
      seriesList,
      animate: animate,
      // Optionally pass in a [DateTimeFactory] used by the chart. The factory
      // should create the same type of [DateTime] as the data provided. If none
      // specified, the default creates local date time.
      dateTimeFactory: const charts.LocalDateTimeFactory(),
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<TimeSeriesSales, DateTime>> _createSampleData() {
    final data = [
      new TimeSeriesSales(new DateTime(2017, 1, 1), 0),
      new TimeSeriesSales(new DateTime(2017, 1, 2), 0),
      new TimeSeriesSales(new DateTime(2017, 1, 3), 150),
      new TimeSeriesSales(new DateTime(2017, 1, 4), 300),
      new TimeSeriesSales(new DateTime(2017, 1, 5), 450),
      new TimeSeriesSales(new DateTime(2017, 1, 6), 600),
      new TimeSeriesSales(new DateTime(2017, 1, 7), 750),
      new TimeSeriesSales(new DateTime(2017, 1, 8), 1000),
      new TimeSeriesSales(new DateTime(2017, 1, 9), 1150),
      new TimeSeriesSales(new DateTime(2017, 1, 10), 1300),
      new TimeSeriesSales(new DateTime(2017, 1, 11), 1450),
      new TimeSeriesSales(new DateTime(2017, 1, 12), 1600),
      new TimeSeriesSales(new DateTime(2018, 1, 1), 1750),
      new TimeSeriesSales(new DateTime(2018, 1, 2), 2000),
      new TimeSeriesSales(new DateTime(2018, 1, 3), 2150),
      new TimeSeriesSales(new DateTime(2018, 1, 4), 2300),
      new TimeSeriesSales(new DateTime(2018, 1, 5), 2450),
      new TimeSeriesSales(new DateTime(2018, 1, 6), 2600),
      new TimeSeriesSales(new DateTime(2018, 1, 7), 2750),
      new TimeSeriesSales(new DateTime(2018, 1, 8), 3000),
      new TimeSeriesSales(new DateTime(2018, 1, 9), 3150),
      new TimeSeriesSales(new DateTime(2018, 1, 10), 3300),
      new TimeSeriesSales(new DateTime(2018, 1, 11), 3450),
      new TimeSeriesSales(new DateTime(2018, 1, 12), 3600),
      new TimeSeriesSales(new DateTime(2019, 1, 1), 3800),
      new TimeSeriesSales(new DateTime(2019, 1, 2), 4000),
      new TimeSeriesSales(new DateTime(2019, 1, 3), 4200),
      new TimeSeriesSales(new DateTime(2019, 1, 4), 4400),
      new TimeSeriesSales(new DateTime(2019, 1, 5), 4600),
      new TimeSeriesSales(new DateTime(2019, 1, 6), 4800),
      new TimeSeriesSales(new DateTime(2019, 1, 7), 5000),
      new TimeSeriesSales(new DateTime(2019, 1, 8), 5200),
      new TimeSeriesSales(new DateTime(2019, 1, 9), 5400),
      new TimeSeriesSales(new DateTime(2019, 1, 10), 5600),
      new TimeSeriesSales(new DateTime(2019, 1, 11), 5800),
      new TimeSeriesSales(new DateTime(2019, 1, 12), 6000),
      new TimeSeriesSales(new DateTime(2020, 1, 1), 6200),
      new TimeSeriesSales(new DateTime(2020, 1, 2), 6400),
      new TimeSeriesSales(new DateTime(2020, 1, 3), 6600),
      new TimeSeriesSales(new DateTime(2020, 1, 4), 6800),
      new TimeSeriesSales(new DateTime(2020, 1, 5), 7000),
      new TimeSeriesSales(new DateTime(2020, 1, 6), 7200),
      new TimeSeriesSales(new DateTime(2020, 1, 7), 7400),
    ];

    return [
      new charts.Series<TimeSeriesSales, DateTime>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (TimeSeriesSales sales, _) => sales.time,
        measureFn: (TimeSeriesSales sales, _) => sales.sales,
        data: data,
      )
    ];
  }
}

/// Sample time series data type.
class TimeSeriesSales {
  final DateTime time;
  final int sales;

  TimeSeriesSales(this.time, this.sales);
}