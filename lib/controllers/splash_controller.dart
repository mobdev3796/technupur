import 'dart:async';

import 'package:get/get.dart';
import 'package:technupur/views/bottom_bar/bottom_bar.dart';

class SplashController extends GetxController {
  showHome() {
    Timer(const Duration(milliseconds: 500), () {
      Get.to(() => const MyBottomBar(),
          transition: Transition.fade,
          duration: const Duration(milliseconds: 500));
    });
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    showHome();
  }
}
