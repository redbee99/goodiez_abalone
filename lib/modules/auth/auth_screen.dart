import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:goodiez_abalone/routes/app_pages.dart';
import 'package:goodiez_abalone/shared/shared.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'auth.dart';

class AuthScreen extends GetView<AuthController> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: _buildItems(context),
      onWillPop: () async => false,
    );
  }

  Widget _buildItems(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          children: [
            Icon(
              Icons.home,
              size: SizeConfig().screenWidth * 0.26,
              color: Colors.grey,
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () {
                  signInWithGoogle();
                },
                child: const Text('Google Log in')
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
                onPressed: () => Get.toNamed(Routes.HOME, arguments: 'true'),
                child: const Text('Apple Log in')
            ),
            SizedBox(height: SizeConfig().screenHeight * 0.3),
            const Text(
              'welcome goodizez!',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                height: 1.0,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );
  }

  void signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
    final GoogleSignInAuthentication googleAuth = await googleUser!.authentication;
    final OAuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    await FirebaseAuth.instance.signInWithCredential(credential);
    Get.toNamed(Routes.HOME, arguments: 'true');
  }

}