import 'package:flutter/material.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/book_mark_button.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/furniture_data_view.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/furniture_data.dart';
import 'package:ultimate_furniture_app_ui_kit/views/details_page.dart';

class BestSellingSlider extends StatelessWidget {
  BestSellingSlider({
    super.key,
  });
  final List<FurnitureData> furnitureData = FurnitureData.furniture;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 312,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final furniture = furnitureData[index];
            return GestureDetector(
              onTap: (){
                if(index == 1){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(furnitureData: furniture,)));
                }else{
                  return;
                }
              },
              child: Container(
                width: 180,
                height: 182,
                margin: const EdgeInsets.fromLTRB(0,10,8,10),
                child: Stack(alignment: Alignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 272,
                      decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const [
                            BoxShadow(
                              color: Color.fromRGBO(0, 93, 255, 0.12),
                              offset: Offset(6, 20),
                              blurRadius: 25,
                              spreadRadius: 0,
                            ),
                          ]
                      ),
                      child: FurnitureDataView(furniture: furniture),
                    ),
                    const BookmarkButton(),

                  ],
                ),
              ),
            );
          },
          itemCount: 2),
    );
  }
}



