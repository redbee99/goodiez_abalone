import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'dart:developer';

import 'package:goodiez_abalone/routes/app_pages.dart';

class SplashController extends GetxController {
  void onReady() async {
    await Future.delayed(Duration(milliseconds: 2000));
    try {
      var storage = FirebaseAuth.instance.currentUser?.displayName;
      log('ohb:, $storage');
      if (storage != null) {
        Get.toNamed(Routes.HOME, arguments: 'true');
      } else {
        Get.toNamed(Routes.AUTH);
      }
    } catch (e) {
      Get.toNamed(Routes.AUTH);
    }
  }
}