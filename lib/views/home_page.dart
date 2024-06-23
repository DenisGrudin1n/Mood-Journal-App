import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mood_journal/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CarouselController emojiController = CarouselController();
  int currentEmojiIndex = 0;

  @override
  Widget build(BuildContext context) {
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
                  "What's your\nmood now?",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: mediumFontWeight,
                    color: whiteColor,
                  ),
                ),

                // Add Smiles Carousel
                Expanded(
                  child: CarouselSlider.builder(
                    carouselController: emojiController,
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
                          currentEmojiIndex == itemIndex
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
                                ),
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
                        setState(() {
                          currentEmojiIndex = itemIndex;
                        });
                      },
                    ),
                  ),
                ),

                // Add Continue Button
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 90,
                  ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
