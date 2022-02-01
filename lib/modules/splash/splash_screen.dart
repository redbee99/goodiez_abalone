import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:goodiez_abalone/shared/shared.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center(
            child: Text("firebase load fail"),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return const Center(
            child: Text("firebase load success"),
          );
        }
        return CircularProgressIndicator();
      },
    );
  }
}