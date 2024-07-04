import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PerformanceChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<double> pageviews = [0, 2, 4, 6, 8, 10]; // Example data points

    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 300,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffF1F1F2)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Total Pageviews",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "62k",
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: LineChart(
                  LineChartData(
                    lineBarsData: [
                      LineChartBarData(

                        isCurved: true,
                        color: Colors.blue,
                        barWidth: 3,
                        isStrokeCapRound: true,
                        dotData: FlDotData(show: true),
                        belowBarData: BarAreaData(
                          show: true,
                          color: Colors.blue.withOpacity(0.3),
                        ),
                        spots: pageviews
                            .asMap()
                            .entries
                            .map((e) => FlSpot(e.key.toDouble(), e.value))
                            .toList(),
                      ),
                    ],
                    titlesData: FlTitlesData(
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 22,
                          getTitlesWidget: (value, meta) {
                            return Text((value.toInt()).toString());
                          },
                        ),
                      ),
                      leftTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: true,
                          reservedSize: 28,
                          interval: 2,
                          getTitlesWidget: (value, meta) {
                            return Text(value.toInt().toString());
                          },
                        ),
                      ),
                    ),
                    gridData: FlGridData(show: true),
                    borderData: FlBorderData(show: true),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  LineChartBarData _buildLineChartBarData({
    required List<Color> colors,
    required List<FlSpot> spots,
  }) {
    return LineChartBarData(
      isCurved: true,
      color: Colors.green,
      barWidth: 3,
      isStrokeCapRound: true,
      dotData: FlDotData(show: false),
      belowBarData: BarAreaData(
        show: true,
       // color: colors.map((color) => color.withOpacity(0.4)).toList(),
      ),
      spots: spots,
    );
  }
}

