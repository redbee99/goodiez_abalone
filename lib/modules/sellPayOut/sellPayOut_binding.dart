import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'sellPayOut_controller.dart';

class SellPayOutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SellPayOutController>(() => SellPayOutController());
  }
}
