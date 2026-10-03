import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class VistaPastel extends StatelessWidget {
  const VistaPastel({super.key});

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
                Text(esAvanzada ? 'Pastel Avanzado #${index + 1}' : 'Pastel Básico #${index + 1}',
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 10),
                SizedBox(
                  height: 200,
                  child: PieChart(
                    PieChartData(
                      sections: [
                        PieChartSectionData(value: 40 + index.toDouble(), color: Colors.red, title: '40%'),
                        PieChartSectionData(value: 30 - index.toDouble(), color: Colors.green, title: '30%'),
                        PieChartSectionData(value: 30, color: Colors.purple, title: '30%'),
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