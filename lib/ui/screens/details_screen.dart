import 'package:flutter/material.dart';
import '../../model/region.dart';

class DetailsScreen extends StatelessWidget {
  final Region region;

  const DetailsScreen({
    super.key,
    required this.region,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(region.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const Icon(Icons.satellite_alt, size: 90),
                    const SizedBox(height: 16),
                    Text(
                      region.name,
                      style: const TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text('Satélite responsável: ${region.satellite}'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              child: Column(
                children: [
                  ListTile(
                    leading: const Icon(Icons.thermostat),
                    title: const Text('Temperatura'),
                    trailing: Text('${region.temperature}°C'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.water_drop),
                    title: const Text('Umidade'),
                    trailing: Text('${region.humidity}%'),
                  ),
                  ListTile(
                    leading: const Icon(Icons.warning),
                    title: const Text('Nível de risco'),
                    trailing: Text(region.risk),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Análise orbital',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              region.description,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}