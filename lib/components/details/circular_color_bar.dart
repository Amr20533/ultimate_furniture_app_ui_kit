import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class CircularColorBar extends StatefulWidget {

  const CircularColorBar({super.key});

  @override
  State<CircularColorBar> createState() => _CircularColorBarState();
}

class _CircularColorBarState extends State<CircularColorBar> {
  int _currentColor = 0;
  final List<Color> colors = [
    AppColors.kPrimaryColor,
    AppColors.kRedColor,
    AppColors.kOrangeColor,
    AppColors.kGreyColor,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Color:', style: Theme.of(context).textTheme.titleMedium!.copyWith(
          color: AppColors.kBlackColor,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          fontFamily: 'LeagueSpartan',
        ),),
        const SizedBox(height: 6),
        Row(
          children: List.generate(colors.length, (index) {
            bool isSelected = _currentColor == index;
            return GestureDetector(
              onTap: () {
                setState(() {
                  _currentColor = index;
                });
              },
              child: Container(
                width: 34,
                height: 34,
                padding: const EdgeInsets.all(5.8),
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: isSelected ? colors[index] : Colors.transparent, width: 1),
                ),
                child: DecoratedBox(decoration: BoxDecoration(
                    color: colors[index],
                    shape: BoxShape.circle
                )),
              ),
            );
          }),
        ),
      ],
    );
  }
}
