import 'package:flutter/material.dart';
import '../components/app_logo.dart';
import 'intro_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  void goToIntro(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    goToIntro(context);

    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.rocket_launch, size: 100, color: Colors.white),
            SizedBox(height: 20),
            AppLogo(),
            SizedBox(height: 8),
            Text(
              'Monitoramento espacial inteligente',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}