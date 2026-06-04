import 'package:flutter/material.dart';
import '../../model/region.dart';

class RegionCard extends StatelessWidget {
  final Region region;
  final bool isFavorite;
  final VoidCallback onTap;
  final VoidCallback onFavoriteTap;

  const RegionCard({
    super.key,
    required this.region,
    required this.isFavorite,
    required this.onTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        onTap: onTap,
        leading: const Icon(Icons.public),
        title: Text(region.name),
        subtitle: Text('Satélite: ${region.satellite} • Risco: ${region.risk}'),
        trailing: IconButton(
          onPressed: onFavoriteTap,
          icon: Icon(
            isFavorite ? Icons.star : Icons.star_border,
          ),
        ),
      ),
    );
  }
}