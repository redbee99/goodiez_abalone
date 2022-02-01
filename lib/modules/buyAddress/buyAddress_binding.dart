import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'buyAddress_controller.dart';

class BuyAddressBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyAddressController>(() => BuyAddressController());
  }
}
