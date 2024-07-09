import 'package:flutter/material.dart';
import 'package:mood_journal/components/bottom_navigation_bar.dart';
import 'package:mood_journal/constants.dart';

class AddMoodPage extends StatelessWidget {
  const AddMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "Add Mood Page",
          style: TextStyle(fontSize: 20, color: blackColor),
        ),
      ),
      bottomNavigationBar: MyBottomNavigationBar(),
    );
  }
}
