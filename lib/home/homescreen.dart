import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';

class homesceen extends StatefulWidget {
  const homesceen({super.key});

  @override
  State<homesceen> createState() => _homesceenState();
}

class _homesceenState extends State<homesceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      appBar: AppBar(
        title: Text("welcome \ user",style: GoogleFonts.outfit(color: AppColors.primaryBlue),),
      ),
      body: Column(
        children: [
        /// todo search Contaner
          SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 03,
                  offset: Offset(0,2),
                ),
              ],
            ),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: "search product",
                prefixIcon: Icon(Icons.search,color: AppColors.primaryBlue,),
                filled: true,
                fillColor: Colors.grey.shade50,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Image.asset("assets/temp/mobile.png"
                ,height: 50,
                  width: 50,fit: BoxFit.contain,
                ),
                SizedBox(width: 10,),
                Text("mobile",
                style: GoogleFonts.outfit(
                  fontSize: 15,
                  color: Colors.black,
                ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
