import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';
import 'package:nex_cart/view/auth/ragister.dart';
import 'package:nex_cart/view/auth/terms_condition.dart';

class onBoardScreen extends StatefulWidget {
  const onBoardScreen({super.key});

  @override
  State<onBoardScreen> createState() => _onBoardScreenState();
}

class _onBoardScreenState extends State<onBoardScreen> {

  PageController _pageController = PageController();

  int currentPage = 0;
  List<Map<String , String>> onbordingData = [
    {
      "image" : "assets/Images/ob_1.png",
      "title" : "shope Everything You Love",
      "description":
      "Explore trending Product for top brands and discover the best deal Everyday ",
    },
    {
      "image" : "assets/Images/ob_2.png",
      "title": "Safe & Secure Payments",
      "description":
      "Enjoy hassle-free checkout with trusted payment methods and complete transaction security.",
    },
    {
      "image" : "assets/Images/ob_3.png",
      "title": "Fast Delivery, Every Time",
      "description":
      "Track your orders in real time and receive them right at your doorstep without delays.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: _pageController,
        onPageChanged: (index){
          setState(() {
            currentPage = index;
          });
        },
        itemCount:  onbordingData.length,
        itemBuilder: (BuildContext context, int index) {
          var item = onbordingData[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('${item['image']}')),
              Text(item['title'].toString(),style: GoogleFonts.outfit(fontWeight: FontWeight.bold,fontSize: 15,color: AppColors.primaryBlue),),
              SizedBox(height: 10,),
              Text("${item['description']}",style: GoogleFonts.outfit(fontSize: 14,fontWeight: FontWeight.bold,color: AppColors.black,),textAlign: TextAlign.center,),
            ],
          );
        }),
      bottomSheet: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(onbordingData.length, (index) => AnimatedContainer(duration: Duration(microseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 4,),
              height: 8,
              width: currentPage == index ? 25 : 8,
              decoration: BoxDecoration(
                color: currentPage == index
                    ? AppColors.primaryBlue
                    : Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
              ),
            ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(child: InkWell(
                  borderRadius: BorderRadius.circular(18),
                  onTap: (){
                    if(currentPage > 0 ){
                      _pageController.previousPage(duration: Duration(microseconds: 300),
                       curve: Curves.easeOut,);
                    }
                  },
                  child: Container(
                    height: 58,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: AppColors.primaryBlue.withOpacity(0.3),

                      ),
                      boxShadow: [BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      )],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios_new_rounded,
                        size: 18,
                          color: AppColors.primaryBlue,
                        ),
                        SizedBox(width: 8,),
                        Text("Previous",style: GoogleFonts.outfit(color: AppColors.primaryBlue,
                            fontSize: 17,fontWeight: FontWeight.w600,
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                ),
                Expanded(child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: (){
                    if(currentPage < onbordingData.length - 1){
                      _pageController.nextPage(duration: Duration(microseconds: 300), curve: Curves.easeInOut);
                    }else{
                      print("This is last Index and Page route");
                      Get.offAll(() => term_condition());
                    }
                  },
                  child: Container(
                    height: 58,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        AppColors.primaryBlue,
                        AppColors.primaryBlue.withOpacity(0.8),
                      ],
                      ),borderRadius: BorderRadius.circular(18),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primaryBlue.withOpacity(0.35),
                          blurRadius: 15,
                          offset: Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next",style: GoogleFonts.outfit(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w700,
                        ),
                        ),
                        SizedBox(width: 8,),
                        Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                      ],
                    ),
                  ),
                ),),
              ],
            ),
          ),
        ],
      ),

    );
  }
}
