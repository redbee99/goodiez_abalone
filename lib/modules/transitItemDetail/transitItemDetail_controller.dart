import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class TransitItemDetailController extends GetxController {
  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }
}