import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';
import 'package:nex_cart/view/auth/onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<SplashScreen> {

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("innit state called");
    Timer(Duration(seconds: 3),(){
      print("print after 4 second");
      Get.offAll(()=>onBoardScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/Icon/app_icon.png"),),
            Text("shop Smarter, Live Batter",
              style: GoogleFonts.outfit(fontSize: 25,fontWeight: FontWeight.bold,color: AppColors.primaryBlue),
            ),
          ],
        ),
      ),
    );
  }
}
