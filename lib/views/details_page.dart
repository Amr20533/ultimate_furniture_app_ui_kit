import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_furniture_app_ui_kit/components/details/CustomButton.dart';
import 'package:ultimate_furniture_app_ui_kit/components/details/circular_color_bar.dart';
import 'package:ultimate_furniture_app_ui_kit/components/details/quantity_counter.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/price_text.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/furniture_data.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.furnitureData, });
  final FurnitureData furnitureData;

  @override
  State<DetailsPage> createState() => _HomePageState();
}

class _HomePageState extends State<DetailsPage> {
  int _currentChair = 0;
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: 109,
              height: 896,
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                color: AppColors.kSideNavColor,
              ),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.93),
                      offset: Offset(0, -80),
                      blurRadius: 20,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                              onTap: ()=> Navigator.pop(context),
                              child: const Icon(Icons.arrow_back)),
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset('assets/icons/bookmark-outline.svg',color: AppColors.kBlackColor, width: 18,height: 18,)),                        ],
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 348,
                        height: 348,
                        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.furnitureData.viewImage[_currentChair]))
                        ),
                      ),
                    ),

                    Container(
                      height: 80,
                      margin: const EdgeInsets.only(left: 20,),
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.furnitureData.viewImage.length,
                        itemBuilder: (context, index) {
                          bool isSelected = _currentChair == index;
                          return GestureDetector(
                          onTap: (){
                            setState(() {
                              _currentChair = index;
                            });
                          },
                          child: Container(
                            width: 80,
                            height: 80,
                            margin: const EdgeInsets.only(right: 12,),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            alignment: Alignment.center,
                            child: Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    opacity: isSelected ? 1 : 0.2,
                                    // fit: BoxFit.cover,
                                      image: AssetImage(widget.furnitureData.viewImage[index]))
                              ),
                            ),
                          ),
                        );
                        },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(
                        left: 20, top: 10, bottom: 5
                    ),
                      child: Text(widget.furnitureData.title, style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: AppColors.kBlackColor,
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'PlayfairDisplay',
                      ),),

                    ),

                    PriceText(
                      price: widget.furnitureData.price,
                      fontSize: 24,
                    ),
                    const Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircularColorBar(),
                          QuantityCounter(),
                        ],
                      ),
                    ),

                    // Container(
                    //   width: double.infinity,
                    //   height: 200,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(10),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.white.withOpacity(0.5), // White shadow
                    //         offset: Offset(0, -4), // Shadow coming from the top
                    //         blurRadius: 20,
                    //       ),
                    //     ],
                    //   ),
                    // ),

                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                      child: Text(widget.furnitureData.description, style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        color: AppColors.kBlackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'LeagueSpartan',
                      ),
                        maxLines: 3,overflow: TextOverflow.ellipsis,
                      ),
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomButton(
        onTap: (){

        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.shopping_cart, color: AppColors.kWhiteColor,),
            const SizedBox(width: 12,),
            Text("Add To Cart", style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color: Colors.white,
                  ),),
          ],
        ),
      ),
    );
  }
}



