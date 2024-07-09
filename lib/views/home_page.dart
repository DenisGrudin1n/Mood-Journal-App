// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import 'package:mood_journal/constants.dart';
import 'package:mood_journal/controllers/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  String getFormattedDateRange() {
    final now = DateTime.now();
    final startDate = now.subtract(const Duration(days: 9));
    final endDate = now;

    final DateFormat formatter = DateFormat('d MMM');

    return '${formatter.format(startDate)} - ${formatter.format(endDate)}';
  }

  @override
  Widget build(BuildContext context) {
    final HomePageController homeController = Get.put(HomePageController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: bgLightGradient,
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 50, 25, 0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/avatars/avatar.png'),
                    radius: 22,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Denis",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: boldFontWeight,
                      color: blackColor,
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 40,
                    width: 135,
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(getFormattedDateRange()),
                        const SizedBox(
                          width: 7,
                        ),
                        const Icon(
                          Icons.calendar_today_outlined,
                          color: blueColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 95,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    final isToday = index == 9;
                    return Column(
                      children: [
                        BuildMoodCalendarCard(
                          date: DateTime.now()
                              .subtract(Duration(days: 9 - index)),
                          selectedEmojiIndex:
                              homeController.selectedEmojiIndex.value,
                          isToday: isToday,
                        ),
                        const SizedBox(
                          width: 48.5,
                        ),
                      ],
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 325,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.all(0),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const BuildJournalCard(),
                        if (index < 3)
                          const SizedBox(
                            height: 18,
                          ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: whiteColor,
        selectedItemColor: blueColor,
        unselectedItemColor: Colors.black.withOpacity(0.55),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 28,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.house_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart_outlined_outlined),
            label: 'Statistics',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: blueColor,
              radius: 22,
              child: Icon(
                Icons.add,
                color: whiteColor,
              ),
            ),
            label: 'Add mood',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Setings',
          ),
        ],
      ),
    );
  }
}

class BuildJournalCard extends StatelessWidget {
  const BuildJournalCard({super.key});

  @override
  Widget build(BuildContext context) {
    String text =
        "Today I feel really sleepy because I've got my finals next week. I study hard days and nights so I sleep about 5-6 hours a day which is not enough for me.";
    text = '${text.substring(0, 100)}...';
    return Container(
      height: 185,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  emojiList[8],
                  height: 35,
                  width: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Sleepy",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: boldFontWeight,
                        color: blackColor,
                      ),
                    ),
                    Text(
                      "10:00",
                      style: TextStyle(
                        color: blackColor.withOpacity(0.75),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  "Thu, 12 Jun",
                  style: TextStyle(
                    color: blackColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Row(
              children: [
                Text(
                  "You felt",
                ),
                Text(
                  " Lack of sleep",
                  style: TextStyle(
                      fontSize: 15,
                      color: blackColor,
                      fontWeight: boldFontWeight),
                ),
              ],
            ),
            const SizedBox(
              height: 3,
            ),
            const Row(
              children: [
                Text(
                  "Because of",
                ),
                Text(
                  " Lots of work",
                  style: TextStyle(
                      fontSize: 15,
                      color: blackColor,
                      fontWeight: boldFontWeight),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BuildMoodCalendarCard extends StatelessWidget {
  final DateTime date;
  final int selectedEmojiIndex;
  final bool isToday;

  const BuildMoodCalendarCard({
    super.key,
    required this.date,
    required this.selectedEmojiIndex,
    required this.isToday,
  });

  @override
  Widget build(BuildContext context) {
    final day = DateFormat('d').format(date);
    final weekday = DateFormat('E').format(date);

    String emojiAsset = isToday
        ? (selectedEmojiIndex != -1
            ? emojiList[selectedEmojiIndex]
            : emojiList[8])
        : '';

    return Container(
      height: 85,
      width: 40,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              day,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: boldFontWeight,
              ),
            ),
            Text(
              weekday,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            if (isToday)
              Image.asset(
                emojiAsset,
                height: 22,
                width: 22,
              ),
          ],
        ),
      ),
    );
  }
}
