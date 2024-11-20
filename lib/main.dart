import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/furniture_data.dart';
import 'package:ultimate_furniture_app_ui_kit/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Furniture App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.kBgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.kBlueColor),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}



