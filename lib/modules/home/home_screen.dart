import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import '../../routes/app_pages.dart';
import 'home.dart';
import 'tabs/tabs.dart';

class HomeScreen extends GetView<HomeController> {
  User? c_user = FirebaseAuth.instance.currentUser;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  Icon cusIcon = Icon(Icons.search);
  var value = Get.arguments;
  @override
  Widget build(BuildContext context) {
    bool shouldPop = false;

    return WillPopScope(
      child: _buildWidget(context),
      onWillPop: () async => shouldPop,
    );
  }

  Widget _buildWidget(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
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
                            Get.offNamed(Routes.SEARCH);
                          },
                  ),
                  ),
                  ],
                ),
        const TabBar(
          indicatorColor: Colors.black,
          labelColor: Colors.black,
            tabs: [
              Tab(text: 'Buying'),
              Tab(text: 'Selling'),
              Tab(text: 'In Transaction'),
            ]),
                  ],
                ),
            preferredSize: const Size.fromHeight(100)),
          title: Container(
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: Colors.black)),
            ),
            child: const Text("Mycollection",
              style: TextStyle(color: Colors.black,
                  backgroundColor: Colors.white,
              fontSize: 30),),
          )
        ),
        body: TabBarView(
            children: [
              BuyingTab(),
              SellingTab(),
              TransactionTab(),
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