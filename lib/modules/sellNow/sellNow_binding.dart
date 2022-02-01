import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'sellNow_controller.dart';

class SellNowBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellNowController>(() => SellNowController());
  }
}
