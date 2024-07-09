import 'package:get/get.dart';
import 'package:mood_journal/routes.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToDailyMoodPage();
  }

  void navigateToDailyMoodPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(pages[pages.length - 1].name);
    });
  }
}
