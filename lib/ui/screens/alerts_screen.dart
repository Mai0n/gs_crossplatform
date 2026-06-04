import 'package:flutter/material.dart';

class AlertsScreen extends StatelessWidget {
  const AlertsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final alerts = [
      'Amazônia Legal: aumento de temperatura detectado por satélite.',
      'Pantanal: umidade abaixo do esperado para o período.',
      'Litoral Paulista: monitoramento costeiro em observação.',
      'Semiárido Nordestino: risco elevado de seca prolongada.',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Alertas orbitais'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: alerts.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: const Icon(Icons.warning),
              title: Text(alerts[index]),
            ),
          );
        },
      ),
    );
  }
}