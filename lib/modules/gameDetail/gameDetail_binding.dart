import 'package:get/get.dart';

import 'gameDetail.dart';


class GameDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<GameDetailController>(GameDetailController());
  }
}
