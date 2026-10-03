import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class VistaLineas extends StatelessWidget {
  const VistaLineas({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 16,
      itemBuilder: (context, index) {
        bool esAvanzada = index >= 10;
        return Card(
          margin: const EdgeInsets.all(12),
          elevation: 3,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(esAvanzada ? 'Línea Avanzada #${index + 1}' : 'Línea Básica #${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            FlSpot(0, (index + 1).toDouble()),
                            FlSpot(1, 3 + index.toDouble()),
                            FlSpot(2, 10 - index.toDouble()),
                            FlSpot(3, 7),
                          ],
                          isCurved: true,
                          color: Colors.blue,
                          barWidth: 4,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}