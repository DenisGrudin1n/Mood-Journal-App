import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:mood_journal/constants.dart';
import 'package:mood_journal/controllers/splash_screen_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgLightGradient,
        ),
        child: Center(
          child: Container(
            color: transparentColor,
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width / 2,
              maxHeight: MediaQuery.of(context).size.height / 2,
            ),
            child: Lottie.asset(
              'assets/animations/loading_smile.json',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}

class SplashScreenToDailyMoodPage extends StatelessWidget {
  const SplashScreenToDailyMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashScreenController());

    return const SplashScreen();
  }
}
