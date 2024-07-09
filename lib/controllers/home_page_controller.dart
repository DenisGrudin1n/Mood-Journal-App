import 'package:get/get.dart';
import 'package:mood_journal/views/home_page.dart';

class HomePageController extends GetxController {
  var selectedEmojiIndex = (-1).obs;

  void navigateToHome() {
    Get.to(() => const HomePage());
  }

  void setSelectedEmojiIndex(int index) {
    selectedEmojiIndex.value = index;
  }
}
