import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal/constants.dart';
import 'package:mood_journal/controllers/bottom_navigation_controller.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final BottomNavigationController bottomNavigationController = Get.find();

    return BottomNavigationBar(
      backgroundColor: whiteColor,
      selectedItemColor: blueColor,
      unselectedItemColor: blackColor.withOpacity(0.55),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      iconSize: 28,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      currentIndex: bottomNavigationController.currentIndex.value,
      onTap: (index) {
        bottomNavigationController.changePage(index);
        switch (index) {
          case 0:
            Get.offAllNamed('/home');
            break;
          case 1:
            Get.offAllNamed('/statistics');
            break;
          case 2:
            Get.offAllNamed('/add_mood');
            break;
          case 3:
            Get.offAllNamed('/favorite');
            break;
          case 4:
            Get.offAllNamed('/settings');
            break;
          default:
            break;
        }
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.house_outlined),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_chart_outlined_outlined),
          label: 'Statistics',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: blueColor,
            radius: 22,
            child: Icon(
              Icons.add,
              color: whiteColor,
            ),
          ),
          label: 'Add mood',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          label: 'Setings',
        ),
      ],
    );
  }
}
