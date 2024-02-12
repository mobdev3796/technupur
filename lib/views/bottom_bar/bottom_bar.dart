import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:technupur/utils/asset_utils.dart';
import 'package:technupur/utils/size_utils.dart';
import 'package:technupur/views/home/home_screen.dart';

class MyBottomBar extends StatefulWidget {
  const MyBottomBar({super.key});

  @override
  _MyBottomBarState createState() => _MyBottomBarState();
}

class _MyBottomBarState extends State<MyBottomBar>
    with TickerProviderStateMixin {
  RxInt selectedIndex = 0.obs;

  Color selectedColor = Colors.white;
  Color unselectedColor = Colors.white.withOpacity(0.4);

  @override
  Widget build(BuildContext context) {
    var anim = AnimationController(
      vsync: this,
      value: 1,
      duration: const Duration(milliseconds: 500),
    );
    return Scaffold(
      extendBody: true,
      body: const HomeScreen(),
      bottomNavigationBar: DotNavigationBar(
        margin: const EdgeInsets.only(left: 10, right: 10),
        currentIndex: selectedIndex.value,
        dotIndicatorColor: Colors.red,
        backgroundColor: Colors.red,
        unselectedItemColor: Colors.grey[300],
        splashBorderRadius: 50,
        enableFloatingNavBar: false,
        onTap: (i) {
          selectedIndex.value = i;
          print(i);
        },
        items: [
          /// Home
          DotNavigationBarItem(
            icon: SizedBox(
              height: 22.h,
              child: Obx(() => Image.asset(AssetsIcons.home,
                  color: selectedIndex.value == 0
                      ? selectedColor
                      : unselectedColor)),
            ),
          ),

          DotNavigationBarItem(
            icon: SizedBox(
              height: 22.h,
              child: Obx(() => Image.asset(AssetsIcons.category,
                  color: selectedIndex.value == 1
                      ? selectedColor
                      : unselectedColor)),
            ),
          ),

          DotNavigationBarItem(
            icon: SizedBox(
              height: 22.h,
              child: Obx(() => Image.asset(AssetsIcons.cart,
                  color: selectedIndex.value == 2
                      ? selectedColor
                      : unselectedColor)),
            ),
          ),

          DotNavigationBarItem(
            icon: SizedBox(
              height: 22.h,
              child: Obx(() => Image.asset(AssetsIcons.like,
                  color: selectedIndex.value == 3
                      ? selectedColor
                      : unselectedColor)),
            ),
          ),
          DotNavigationBarItem(
            icon: SizedBox(
              height: 22.h,
              child: Obx(() => Image.asset(AssetsIcons.user,
                  color: selectedIndex.value == 4
                      ? selectedColor
                      : unselectedColor)),
            ),
          ),
        ],
      ),
    );
  }
}
