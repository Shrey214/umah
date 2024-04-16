import 'package:flutter/material.dart';

import '../home_screen.dart';
class MainSplashScreen extends StatelessWidget {
  const MainSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) =>const HomeScreen()),
      );
    });
    return Scaffold(
      body: Center(
        child: Image.asset('assets/splash.png'), // Replace 'splash.png' with your actual image asset
      ),
    );
  }
}
