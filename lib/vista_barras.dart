import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class VistaBarras extends StatelessWidget {
  const VistaBarras({super.key});

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
                Text(esAvanzada ? 'Barra Avanzada #${index + 1}' : 'Barra Básica #${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: BarChart(
                    BarChartData(
                      barGroups: [
                        BarChartGroupData(x: 0, barRods: [BarChartRodData(toY: 5 + index.toDouble(), color: Colors.teal)]),
                        BarChartGroupData(x: 1, barRods: [BarChartRodData(toY: 12 - index.toDouble(), color: Colors.orange)]),
                        BarChartGroupData(x: 2, barRods: [BarChartRodData(toY: 8, color: Colors.indigo)]),
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