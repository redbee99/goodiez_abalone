import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'placeSellAsk_controller.dart';

class placeSellAskBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<placeSellAskController>(() => placeSellAskController());
  }
}
