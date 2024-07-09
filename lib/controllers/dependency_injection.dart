import 'package:get/get.dart';
import 'package:mood_journal/controllers/bottom_navigation_controller.dart';
import 'package:mood_journal/controllers/daily_mood_page_controller.dart';
import 'package:mood_journal/controllers/home_page_controller.dart';
import 'package:mood_journal/controllers/splash_screen_controller.dart';

void initDependencies() {
  Get.put(BottomNavigationController());
  Get.lazyPut(() => DailyMoodPageController());
  Get.lazyPut(() => HomePageController());
  Get.lazyPut(() => SplashScreenController());
}
