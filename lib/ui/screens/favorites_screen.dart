import 'package:flutter/material.dart';
import '../../model/region.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Region> favorites;

  const FavoritesScreen({
    super.key,
    required this.favorites,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regiões favoritas'),
      ),
      body: favorites.isEmpty
          ? const Center(
              child: Text('Nenhuma região favorita selecionada.'),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: favorites.length,
              itemBuilder: (context, index) {
                final region = favorites[index];

                return Card(
                  child: ListTile(
                    leading: const Icon(Icons.star),
                    title: Text(region.name),
                    subtitle: Text('Risco atual: ${region.risk}'),
                  ),
                );
              },
            ),
    );
  }
}