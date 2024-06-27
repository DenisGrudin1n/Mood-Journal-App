import 'package:get/get.dart';
import 'package:mood_journal/views/home_page.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    navigateToHome();
  }

  void navigateToHome() {
    Get.off(() => const HomePage());
  }
}
