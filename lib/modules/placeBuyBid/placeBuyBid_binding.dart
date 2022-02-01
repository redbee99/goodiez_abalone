import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'placeBuyBid_controller.dart';

class PlaceBuyBidBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PlaceBuyBidController>(() => PlaceBuyBidController());
  }
}
