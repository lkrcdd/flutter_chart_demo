import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('FL Chart - Line Chart')),
        body: LineChart(
          LineChartData(
            lineBarsData: [
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 5),
                  FlSpot(2, 7),
                  FlSpot(3, 8),
                  FlSpot(4, 6),
                  FlSpot(5, 9),
                ],
              ),
              LineChartBarData(
                spots: [
                  FlSpot(3, 3),
                  FlSpot(5, 5),
                  FlSpot(7, 7),
                  FlSpot(8, 8),
                  FlSpot(6, 6),
                  FlSpot(9, 9),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
