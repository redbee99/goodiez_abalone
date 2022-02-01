import 'package:get/get.dart';

class SearchController extends GetxController {
  var searchdata = <String>['search item 1', 'search item 2', 'search item 3'].obs;

  @override
  void onInit() async {
    super.onInit();
    loadCollections();
  }

  Future<void> loadCollections() async {
    print('LoadCollections');
  }
}