import 'package:flutter/material.dart';

class AppColors{
  // static const Color kBottomNavColor = Color.fromARGB(25, 0, 93, 255);
  static const Color kSideNavColor = Color(0xFFE9F2FE);
  static const Color kBgColor = Color(0xFFFEFEFE);
  static const Color kWhiteColor = Color(0xFFFFFFFF);
  static const Color kBlueColor = Color(0xFF005DFF);
  static const Color kPrimaryColor = Color(0xFF2F4B81);
  static const Color kRedColor = Color(0xFFBC4747);
  static const Color kOrangeColor = Color(0xFFFEC286);
  static const Color kGreenColor = Color(0xFF47BC66);
  static Color kGreyColor = const Color(0xFF000000).withOpacity(0.3);
  static Color kBlackColor = const Color(0xFF000000);

  static List<BoxShadow> kCustomShadowBox = const [
    BoxShadow(
      color: Color.fromRGBO(60, 56, 240, 0.14), // Shadow color
      offset: Offset(4, 6), // Horizontal and vertical offsets
      blurRadius: 7.5, // Blur radius
      spreadRadius: 0, // No spread
    ),
  ];

  static List<BoxShadow>  kButtonShadowBox = [
    BoxShadow(
    color: Colors.black.withOpacity(0.1),
    offset: const Offset(0, 20),
    blurRadius: 10,
    spreadRadius: 0,
    ),
  ];
}