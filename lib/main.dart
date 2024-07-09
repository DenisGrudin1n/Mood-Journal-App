import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mood_journal/constants.dart';
import 'package:mood_journal/routes.dart';
import 'package:mood_journal/controllers/dependency_injection.dart' as di;

void main() {
  di.initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: bgLight,
      ),
      initialRoute: '/splashScreen',
      getPages: pages,
    );
  }
}
