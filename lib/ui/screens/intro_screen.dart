import 'package:flutter/material.dart';
import 'home_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.satellite_alt,
              size: 120,
              color: Colors.white,
            ),

            const SizedBox(height: 24),

            const Text(
              'Monitoramento orbital inteligente',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              'O SpaceKeeper acompanha regiões estratégicas da Terra usando dados simulados de satélites para identificar riscos ambientais, mudanças climáticas e situações que exigem atenção.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17,
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.white,
                      side: const BorderSide(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Voltar'),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ),
                      );
                    },
                    child: const Text('Avançar'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}