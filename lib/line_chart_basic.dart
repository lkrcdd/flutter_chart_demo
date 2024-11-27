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
            //지워도 된다.
            gridData: const FlGridData(show: true),
            // 지워도 된다.
            titlesData: const FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 40,
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 30,
                ),
              ),
            ),
            // 지워도 된다.
            borderData: FlBorderData(
              //그래프 테두리 설정
              show: true,
              border: Border.all(color: Colors.red, width: 10),
            ),
            // 각 축의 범위 지정. 지워도 된다. 그럼 lineBarsData에 따라 자동 조정됨
            minX: 0,
            maxX: 20,
            baselineX: 10,
            minY: 0,
            maxY: 20,
            baselineY: 10,
            lineBarsData: [
              // 점 찍기, 위의 범위 벗어나면 벗어난대로 그린다.
              LineChartBarData(
                spots: [
                  FlSpot(0, 3),
                  FlSpot(1, 5),
                  FlSpot(2, 7),
                  FlSpot(3, 8),
                  FlSpot(4, 6),
                  FlSpot(5, 9),
                ],
                isCurved: true, //곡률 주기
                color: Colors.blue, //선 색
                barWidth: 10, //선그래프 굵기
                // 그래프 아래를 칠하는 속성
                belowBarData: BarAreaData(
                  show: false,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
