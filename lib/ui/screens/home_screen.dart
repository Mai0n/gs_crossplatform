import 'package:flutter/material.dart';
import '../../model/region.dart';
import '../../repository/region_repository.dart';
import '../components/region_card.dart';
import 'details_screen.dart';
import 'alerts_screen.dart';
import 'favorites_screen.dart';
import 'about_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Region> regions;
  List<Region> favorites = [];

  @override
  void initState() {
    super.initState();
    regions = RegionRepository.getRegions();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SpaceKeeper'),
        actions: [
          IconButton(
            icon: const Icon(Icons.warning),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AlertsScreen(),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.star),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FavoritesScreen(
                    favorites: favorites,
                  ),
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Regiões monitoradas',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Acompanhe áreas estratégicas da Terra com apoio de dados orbitais.',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: regions.length,
                itemBuilder: (context, index) {
                  final region = regions[index];

                  return RegionCard(
                    region: region,
                    isFavorite: favorites.contains(region),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            region: region,
                          ),
                        ),
                      );
                    },
                    onFavoriteTap: () {
                      setState(() {
                        if (favorites.contains(region)) {
                          favorites.remove(region);
                        } else {
                          favorites.add(region);
                        }
                      });
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}