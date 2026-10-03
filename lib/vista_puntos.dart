import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class VistaPuntos extends StatelessWidget {
  const VistaPuntos({super.key});

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
                Text(esAvanzada ? 'Línea Gradiente Avanzada #${index + 1}' : 'Línea Gradiente Básica #${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: LineChart(
                    LineChartData(
                      lineBarsData: [
                        LineChartBarData(
                          spots: [
                            const FlSpot(0, 2),
                            FlSpot(1, 5 + index.toDouble()),
                            const FlSpot(2, 3),
                            FlSpot(3, 9 - index.toDouble()),
                          ],
                          isCurved: false,
                          color: Colors.purple,
                          barWidth: 3,
                          dotData: const FlDotData(show: true),
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