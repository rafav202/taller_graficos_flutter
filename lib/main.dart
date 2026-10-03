import 'package:flutter/material.dart';

import 'vista_lineas.dart';
import 'vista_barras.dart';
import 'vista_pastel.dart';
import 'vista_puntos.dart';

void main() {
  runApp(const MiAppGraficas());
}

class MiAppGraficas extends StatelessWidget {
  const MiAppGraficas({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Taller de Gráficos',
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Evidencia Gráficos - Grupo 1'),
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          bottom: const TabBar(
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: 'Gráficas de Líneas (16)'),
              Tab(text: 'Gráficas de Barras (16)'),
              Tab(text: 'Gráficas de Pastel (16)'),
              Tab(text: 'Gráficas de Puntos (16)'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            VistaLineas(),
            VistaBarras(),
            VistaPastel(),
            VistaPuntos(),
          ],
        ),
      ),
    );
  }
}