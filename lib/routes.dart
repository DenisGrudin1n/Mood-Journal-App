import 'package:get/get.dart';
import 'package:mood_journal/views/add_mood_page.dart';
import 'package:mood_journal/views/favorite_page.dart';
import 'package:mood_journal/views/home_page.dart';
import 'package:mood_journal/views/settings_page.dart';
import 'package:mood_journal/views/splash_screen.dart';
import 'package:mood_journal/views/statistics_page.dart';

List<GetPage> pages = [
  GetPage(
    name: '/splashScreen',
    page: () => const SplashScreenToDailyMoodPage(),
  ),
  GetPage(
    name: '/home',
    page: () => const HomePage(),
  ),
  GetPage(
    name: '/statistics',
    page: () => const StatisticsPage(),
  ),
  GetPage(
    name: '/add_mood',
    page: () => const AddMoodPage(),
  ),
  GetPage(
    name: '/favorite',
    page: () => const FavoritePage(),
  ),
  GetPage(
    name: '/settings',
    page: () => const SettingsPage(),
  ),
];
