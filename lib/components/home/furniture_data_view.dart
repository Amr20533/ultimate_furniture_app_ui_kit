import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/price_text.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/furniture_data.dart';

class FurnitureDataView extends StatelessWidget {
  const FurnitureDataView({
    super.key,
    required this.furniture,
  });

  final FurnitureData furniture;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
            width: 118,
            height: 118,
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 24),
            decoration: BoxDecoration(
              // color: Colors.grey,
                image: DecorationImage(
                  // fit: BoxFit.cover,
                    image: AssetImage(furniture.mainImage))
            ),
          ),
        ),
        Padding(padding: const EdgeInsets.only(
            left: 20
        ),
          child: Text(furniture.title, style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: AppColors.kBlackColor,
            fontWeight: FontWeight.w600,
            fontFamily: 'PlayfairDisplay',
          ),
            maxLines: 1,overflow: TextOverflow.fade,
          ),

        ),

        Container(
          width: 112,height: 34,
          margin: const EdgeInsets.only(
              left: 20,
              top: 4
          ),
          child: Text(furniture.subTitle, style: Theme.of(context).textTheme.titleSmall!.copyWith(
            color: AppColors.kGreyColor,
            fontSize: 11,
            fontFamily: 'LeagueSpartan',
          ),
            maxLines: 2,overflow: TextOverflow.ellipsis,
          ),
        ),
        PriceText(
          price: furniture.price,
        ),

      ],
    );
  }
}
