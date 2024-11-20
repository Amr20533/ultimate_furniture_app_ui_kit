import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
    required this.price,
    this.fontSize = 18,
  });

  final String price;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 112,height: 34,
      margin: const EdgeInsets.only(
          left: 20,
          top: 10
      ),
      child: Text('₹$price', style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: AppColors.kBlueColor,
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        fontFamily: 'LeagueSpartan',
      ),),
    );
  }
}
