import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sobre o projeto'),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.rocket_launch, size: 90),
            SizedBox(height: 20),
            Text(
              'SpaceKeeper',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'O SpaceKeeper é um protótipo funcional desenvolvido em Flutter para a Global Solution com o tema Indústria Espacial.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              'A proposta é simular o uso de dados de satélites para acompanhar regiões do planeta, gerar alertas ambientais e apoiar decisões preventivas.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 12),
            Text(
              'O projeto utiliza telas, navegação, listas mockadas, cards e interação com favoritos, seguindo os conceitos praticados em aula.',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}