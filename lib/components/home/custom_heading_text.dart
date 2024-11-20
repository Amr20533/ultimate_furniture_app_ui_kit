import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class CustomHeadingText extends StatelessWidget {
  const CustomHeadingText({
    super.key, required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 20),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 18, fontFamily: 'LeagueSpartan', fontWeight: FontWeight.w600, color: AppColors.kBlackColor),
      ),
    );
  }
}