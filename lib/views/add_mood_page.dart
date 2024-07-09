import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal/constants.dart';
import 'package:mood_journal/routes.dart';

class AddMoodPage extends StatelessWidget {
  const AddMoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () => Get.back(),
                child: const Icon(
                  Icons.arrow_back,
                  color: blueColor,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "What do you feel now?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: lightFontWeight,
                  color: blackColor.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: bgLight.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                  cursorWidth: 1.5,
                  cursorColor: blackColor.withOpacity(0.6),
                  style: TextStyle(
                    color: blackColor.withOpacity(0.6),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                    counterText: '',
                    hintText: "I feel...",
                    hintStyle: TextStyle(
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Why do you feel it?",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: lightFontWeight,
                  color: blackColor.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                  color: bgLight.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                alignment: Alignment.center,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.text,
                  maxLength: 50,
                  cursorWidth: 1.5,
                  cursorColor: blackColor.withOpacity(0.6),
                  style: TextStyle(
                    color: blackColor.withOpacity(0.6),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                    counterText: '',
                    hintText: "Because of...",
                    hintStyle: TextStyle(
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Anything you want to add",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: lightFontWeight,
                  color: blackColor.withOpacity(0.8),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 210,
                decoration: BoxDecoration(
                  color: bgLight.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                alignment: Alignment.topLeft,
                child: TextField(
                  textAlignVertical: TextAlignVertical.top,
                  keyboardType: TextInputType.multiline,
                  maxLength: 500,
                  maxLines: 7,
                  cursorWidth: 1.5,
                  cursorColor: blackColor.withOpacity(0.6),
                  style: TextStyle(
                    color: blackColor.withOpacity(0.6),
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    isCollapsed: true,
                    counterText: '',
                    hintText:
                        "Add your notes on any thought that reflecting your mood",
                    hintStyle: TextStyle(
                      color: blackColor.withOpacity(0.6),
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  Get.toNamed(pages[1].name);
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
                      "Save",
                      style: TextStyle(
                        color: whiteColor,
                        fontSize: 16,
                        fontWeight: mediumFontWeight,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 330,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: transparentColor,
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: const Text(
                      "Skip and go back",
                      style: TextStyle(
                        color: blueColor,
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
    );
  }
}
