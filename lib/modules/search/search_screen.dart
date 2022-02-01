import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/modules/search/search.dart';
import 'package:goodiez_abalone/modules/search/tabs/search_tab.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SearchScreen extends GetView<SearchController> {
  User? c_user = FirebaseAuth.instance.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  Widget build(BuildContext context) {
    bool shouldPop = false;
    return WillPopScope(
      child: _buildWidget2(context),
      onWillPop: () async => shouldPop,
    );
  }

  Widget _buildWidget2(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Get.offNamed(Routes.HOME, arguments: 'true');
            },
          ),
          actions: <Widget>[
            IconButton (
              icon: const Icon(Icons.vpn_key),
              color: Colors.black,
              onPressed: () {
                signOut();
              },
            ),
          ],
          bottom:
          PreferredSize(
              child: Column(
                children: <Widget> [
                  Row(
                    children: <Widget>[
                      const Flexible(child: TextField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFFFFFFF),
                        ),
                      )
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        child: IconButton( icon: Icon(Icons.search),
                          onPressed: () {

                          },
                        ),
                      ),
                    ],
                  ),
                  const TabBar(
                    indicatorColor: Colors.black,
                      tabs: [
                        Tab(text: 'Search'),
                      ]),
                ],
              ),
              preferredSize: Size.fromHeight(100)),
          title: Transform(
            transform: Matrix4.translationValues(-30.0, 0, 0),
            child: Container(
              decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: Colors.black)),
              ),
              child: const Text("Search",
                style: TextStyle(color: Colors.black,
                    backgroundColor: Colors.white,
                    fontSize: 30),),
            ),
          )
        ),
        body: TabBarView(
            children: [
              SearchTab(),
            ]
        ),
      ),
    );
  }

  Future<void> signOut() async {
    await Firebase.initializeApp();
    try {
      await FirebaseAuth.instance.signOut();
      await googleSignIn.signOut();
      print("Success");
      Get.deleteAll();
      Get.toNamed(Routes.AUTH);
    } catch (e) {
      print(e.toString());
    }
  }
}