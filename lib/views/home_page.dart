import 'package:flutter/material.dart';
import 'package:mood_journal/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgLightGradient,
        ),
        child: const Center(
          child: Padding(
            padding: EdgeInsets.only(
              top: 100,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Text(
                    "What's your\nmood now?",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: mediumFontWeight,
                      color: whiteColor,
                    ),
                  ),
                ),
                // Add Smiles Carousel
                Expanded(
                  child: SizedBox(),
                ),
                // Add Continue Button
                Expanded(
                  child: SizedBox(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
