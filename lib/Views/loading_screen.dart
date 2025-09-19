import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/Animations/weather_icon.json',
          // width: 150,
          // height: 150,
          // fit: BoxFit.contain,
        ),
      ),
    );
  }
}
