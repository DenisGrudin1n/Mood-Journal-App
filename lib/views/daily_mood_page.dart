import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mood_journal/constants.dart';
import 'package:get/get.dart';
import 'package:mood_journal/controllers/daily_mood_page_controller.dart';
import 'package:mood_journal/controllers/home_page_controller.dart';

class DailyMoodPage extends StatelessWidget {
  const DailyMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    final DailyMoodPageController dailyMoodController =
        Get.put(DailyMoodPageController());
    final HomePageController homeController = Get.put(HomePageController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgLightGradient,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 90,
            ),
            child: Column(
              children: [
                const Text(
                  "What's your\nmood today?",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: mediumFontWeight,
                    color: whiteColor,
                  ),
                ),

                // Add Smiles Carousel
                Expanded(
                  child: CarouselSlider.builder(
                    carouselController: dailyMoodController.emojiController,
                    itemCount: emojiList.length,
                    itemBuilder: (context, itemIndex, _) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            emojiList[itemIndex],
                            height: 200,
                            width: 200,
                          ),
                          Obx(() {
                            return dailyMoodController
                                        .currentEmojiIndex.value ==
                                    itemIndex
                                ? SizedBox(
                                    height: 35,
                                    child: Text(
                                      emojiNames[itemIndex],
                                      style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: mediumFontWeight,
                                        color: blackColor,
                                      ),
                                    ),
                                  )
                                : const SizedBox(
                                    height: 35,
                                  );
                          }),
                        ],
                      );
                    },
                    options: CarouselOptions(
                      height: 500,
                      viewportFraction: 0.5,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.5,
                      scrollDirection: Axis.horizontal,
                      autoPlay: true,
                      autoPlayInterval: const Duration(milliseconds: 2000),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 1200),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (itemIndex, _) {
                        dailyMoodController.currentEmojiIndex.value = itemIndex;
                      },
                    ),
                  ),
                ),

                // Add Continue Button
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 90,
                  ),
                  child: InkWell(
                    // ignore: void_checks
                    onTap: () {
                      int selectedEmojiIndex =
                          dailyMoodController.currentEmojiIndex.value;
                      homeController.setSelectedEmojiIndex(selectedEmojiIndex);
                      Future.delayed(Duration.zero, () {
                        homeController.navigateToHome();
                      });
                    },
                    child: Container(
                      width: 330,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: blueColor,
                      ),
                      child: const Center(
                        child: Text(
                          "Continue",
                          style: TextStyle(
                            color: whiteColor,
                            fontSize: 16,
                            fontWeight: mediumFontWeight,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
