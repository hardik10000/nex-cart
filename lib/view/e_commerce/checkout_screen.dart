import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';

class checkbuttonscreen extends StatefulWidget {
  const checkbuttonscreen({super.key});

  @override
  State<checkbuttonscreen> createState() => _checkbuttonscreenState();
}

class _checkbuttonscreenState extends State<checkbuttonscreen> {
  TextEditingController namecontroler = TextEditingController();
  TextEditingController addresscontroler = TextEditingController();
  TextEditingController landmarkcontroler = TextEditingController();
  TextEditingController contactnumbercontroler = TextEditingController();
  TextEditingController cityControler = TextEditingController();
  TextEditingController pincodeControler = TextEditingController();
  TextEditingController remarkscontroler = TextEditingController();

  @override
  void dispose() {
    namecontroler.dispose();
    addresscontroler.dispose();
    landmarkcontroler.dispose();
    contactnumbercontroler.dispose();
    cityControler.dispose();
    pincodeControler.dispose();
    remarkscontroler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.screenBackground,
        leading: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 12,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: IconButton(
              onPressed: () => Get.back(),
              icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.black,
                size: 18,
              ),
            ),
          ),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.outfit(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: AppColors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            ],
          ),
        ),
      ),
    );
  }
}

Widget buildSummeryRow(String title, String value, {bool isBold = false}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        title,
        style: GoogleFonts.outfit(
          fontSize: 15,
          fontWeight: isBold ? FontWeight.w500 : FontWeight.w700,
          color: Colors.black,
        ),
      ),
      Text(
        value,
        style: GoogleFonts.outfit(
          fontSize: 15,
          fontWeight: isBold ? FontWeight.w700 : FontWeight.w500,
          color: AppColors.black,
        ),
      ),
    ],
  );
}
