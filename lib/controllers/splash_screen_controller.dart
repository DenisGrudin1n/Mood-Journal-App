import 'package:get/get.dart';
import 'package:mood_journal/views/daily_mood_page.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToDailyMoodPage();
  }

  void navigateToDailyMoodPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const DailyMoodPage());
    });
  }
}
