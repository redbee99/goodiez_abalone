import 'package:get/get.dart';


class HomeController extends GetxController {
  var trandata = <String>['Buy It Now', 'normal'].obs;

  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }
}