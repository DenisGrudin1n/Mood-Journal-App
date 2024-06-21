import 'package:flutter/material.dart';

const FontWeight mediumFontWeight = FontWeight.w600;

const Color bgLight = Color.fromARGB(255, 213, 209, 253);
const Color bgMidLight = Color.fromARGB(255, 235, 236, 255);
const Color whiteColor = Colors.white;
const Color transparentColor = Colors.transparent;

const Gradient bgLightGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    bgLight,
    bgLight,
    bgMidLight,
    whiteColor,
  ],
);
