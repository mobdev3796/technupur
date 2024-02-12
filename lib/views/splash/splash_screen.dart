import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:technupur/controllers/splash_controller.dart';
import 'package:technupur/utils/asset_utils.dart';
import 'package:technupur/utils/size_utils.dart';
import 'package:technupur/widgets/spaces.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});
  final controller = Get.put(SplashController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 30.h),
        width: SizeUtils.width,
        child: SizedBox(
          height: 26.h,
          child: Image.asset(Assets.technupur),
        ),
      ),
      body: Container(
        height: SizeUtils.height,
        width: SizeUtils.width,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('assets/splash.png'))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 90.h, child: Image.asset(Assets.logo)),
            verticalSpace(height: 30),
            SizedBox(
              height: 46.h,
              child: Image.asset(Assets.textLogo),
            )
          ],
        ),
      ),
    );
  }
}
