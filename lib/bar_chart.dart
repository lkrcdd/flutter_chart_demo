import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Bar Chart')),
        body: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 10,
            borderData: FlBorderData(show: false),
            barGroups: [
              BarChartGroupData(
                x: 0,
                barRods: [
                  BarChartRodData(toY: 5, color: Colors.blue),
                  BarChartRodData(toY: 6, color: Colors.red),
                  BarChartRodData(toY: 7, color: Colors.green),
                ],
              ),
              BarChartGroupData(
                x: 1,
                barRods: [
                  BarChartRodData(
                    toY: 7,
                    color: Colors.orange,
                    width: 50,
                    borderRadius: const BorderRadius.vertical(),
                  ),
                ],
              ),
              BarChartGroupData(
                x: 2,
                barRods: [
                  BarChartRodData(toY: 6, color: Colors.green),
                ],
              ),
              BarChartGroupData(
                x: 3,
                barRods: [
                  BarChartRodData(toY: 8, color: Colors.red),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
