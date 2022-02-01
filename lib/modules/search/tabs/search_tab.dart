import 'package:flutter/material.dart';
import 'dart:developer';
import 'package:get/get.dart';
import 'package:goodiez_abalone/modules/search/search.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';

SearchController searchController = SearchController();

class SearchTab extends StatelessWidget {
   @override
    Widget build(BuildContext context) {
      return Obx(() => ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: searchController.searchdata.length,
        itemBuilder: (BuildContext context, int index) {
          return listTile(searchController.searchdata[index]);
        },
      ),
      );
    }
}

class listTile extends StatelessWidget {
  final _value;

  const listTile(this._value, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
    contentPadding: const EdgeInsets.symmetric(vertical:20),
      title: Text(_value,
        style: const TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 20
          ),
      ),
      leading: const Image(
         image: AssetImage('image/image.png'),
         width: 100,
         height: 200,
         fit: BoxFit.fill,
       ),
      onTap: () {
        log('ohb: $_value');
        Get.toNamed(Routes.GAMEDETAIL);
      },
    );
  }
}