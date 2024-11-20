import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key, required this.onTap, required this.child,
  });
  final VoidCallback onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,alignment: Alignment.center,
        height: 72,
        decoration: const BoxDecoration(
          color: AppColors.kBlueColor,
          borderRadius: BorderRadius.only(topRight: Radius.circular(35),
              topLeft: Radius.circular(35)),
        ),
        child: child,
      ),
    );
  }
}
