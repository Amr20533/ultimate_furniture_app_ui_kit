import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class BookmarkButton extends StatelessWidget {
  const BookmarkButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: 3,
      child: InkWell(
        onTap: (){},
        child: Container(
          width: 34,
          height: 34,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: AppColors.kBlueColor,
              borderRadius: BorderRadius.circular(6),
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(0, 93, 255, 0.12),
                  offset: Offset(6, 20),
                  blurRadius: 15,
                  spreadRadius: 0,
                ),
              ]
          ),
          child: SvgPicture.asset('assets/icons/bookmark-outline.svg', width: 18,height: 18,),
        ),
      ),
    );
  }
}
