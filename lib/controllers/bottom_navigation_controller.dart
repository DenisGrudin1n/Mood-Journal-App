import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  RxInt currentIndex = 0.obs;

  void changePage(int index) {
    currentIndex.value = index;
  }
}
