import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/shared/shared.dart';

class AuthController extends GetxController {

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void login(BuildContext context) async {
    AppFocus.unfocus(context);
    print('login');
  }

  @override
  void onClose() {
    super.onClose();

    // dispose login controllers
  }
}