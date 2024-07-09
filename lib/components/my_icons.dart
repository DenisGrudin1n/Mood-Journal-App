import 'package:flutter/material.dart';
import 'package:mood_journal/constants.dart';

class MyIconArrowBack extends StatelessWidget {
  const MyIconArrowBack({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        Icon(
          Icons.arrow_back,
          color: blueColor,
        ),
        Row(
          children: [
            SizedBox(
              width: 6,
            ),
            Icon(
              Icons.horizontal_rule_outlined,
              color: blueColor,
            ),
          ],
        ),
      ],
    );
  }
}
