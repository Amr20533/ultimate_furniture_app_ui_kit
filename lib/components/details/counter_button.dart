import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    super.key, required this.icon, required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        decoration: BoxDecoration(
          color: AppColors.kSideNavColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: Colors.black,size: 20,),
      ),
    );
  }
}
