import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/best_selling_slider.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/custom_heading_text.dart';
import 'package:ultimate_furniture_app_ui_kit/components/home/trending_slider.dart';
import 'package:ultimate_furniture_app_ui_kit/utils/colors/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, });


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
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
              decoration: const BoxDecoration(
                color: AppColors.kSideNavColor,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 9, top: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                              onTap: (){},
                              child: SvgPicture.asset("assets/icons/search.svg")),
                          SizedBox(width: size.width * 0.03,),
                          Image.asset('assets/icons/user.png')
                        ],
                      ),
                    ),
                    const CustomHeadingText(text: 'Best Selling',),
                    BestSellingSlider(),
                    const CustomHeadingText(text: 'Trending',),
                    TrendingSlider(),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        color: AppColors.kSideNavColor,
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.access_alarm),
            Icon(Icons.access_alarm),
          ],
        ),
      ),
    );
  }
}

