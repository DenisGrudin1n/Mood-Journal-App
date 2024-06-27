import 'package:flutter/material.dart';

const FontWeight lightFontWeight = FontWeight.w500;
const FontWeight mediumFontWeight = FontWeight.w600;
const FontWeight boldFontWeight = FontWeight.bold;

const Color bgLight = Color.fromARGB(255, 213, 209, 253);
const Color bgMidLight = Color.fromARGB(255, 235, 236, 255);
const Color whiteColor = Colors.white;
const Color blackColor = Colors.black;
const Color blueColor = Color.fromARGB(255, 107, 78, 255);
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

const List<String> emojiList = [
  'assets/emoji/happy.png',
  'assets/emoji/sad.png',
  'assets/emoji/angry.png',
  'assets/emoji/neutral.png',
  'assets/emoji/laughing.png',
  'assets/emoji/silly.png',
  'assets/emoji/surprised.png',
  'assets/emoji/tired.png',
  'assets/emoji/sleepy.png',
  'assets/emoji/in_love.png',
  'assets/emoji/tearful.png',
  'assets/emoji/awkward.png',
  'assets/emoji/badass.png',
];

const List<String> emojiNames = [
  'Happy',
  'Sad',
  'Angry',
  'Neutral',
  'Laughing',
  'Silly',
  'Surprised',
  'Tired',
  'Sleepy',
  'In love',
  'Tearful',
  'Awkward',
  'Badass',
];
