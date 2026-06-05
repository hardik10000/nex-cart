import 'package:flutter/material.dart';
import 'package:nex_cart/view/auth/login.dart';
import 'package:nex_cart/view/auth/onboard_screen.dart';
import 'package:nex_cart/view/auth/splash_screen.dart';
void main() {
  runApp( count());
}

class count extends StatelessWidget {
  count({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Count app',
       home: LoginScreen(),
    );
  }
}



