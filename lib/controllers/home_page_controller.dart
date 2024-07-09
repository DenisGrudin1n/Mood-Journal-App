import 'package:get/get.dart';
import 'package:mood_journal/routes.dart';

class HomePageController extends GetxController {
  var selectedEmojiIndex = (-1).obs;

  void navigateToHome() {
    Get.offNamed(pages[1].name);
  }

  void setSelectedEmojiIndex(int index) {
    selectedEmojiIndex.value = index;
  }
}
