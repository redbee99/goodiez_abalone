import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'buyBid_controller.dart';

class BuyBidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuyBidController>(() => BuyBidController());
  }
}
