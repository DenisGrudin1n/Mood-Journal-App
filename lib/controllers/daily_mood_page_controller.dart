import 'package:carousel_slider/carousel_controller.dart';
import 'package:get/get.dart';

class DailyMoodPageController extends GetxController {
  final CarouselController emojiController = CarouselController();
  var currentEmojiIndex = 0.obs;
  var selectedEmojiIndex = (-1).obs;
}
