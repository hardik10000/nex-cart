import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:nex_cart/view/auth/login.dart';
import 'package:nex_cart/view/auth/onboard_screen.dart';
import 'package:nex_cart/view/auth/privacy_policy.dart';
import 'package:nex_cart/view/auth/ragister.dart';
import 'package:nex_cart/view/auth/splash_screen.dart';
import 'package:nex_cart/view/auth/terms_condition.dart';
import 'package:nex_cart/view/home/homescreen.dart';

void main() {
  runApp(count());
}

class count extends StatelessWidget {
  count({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Count app',
      home: SplashScreen(),
    );
  }
}
