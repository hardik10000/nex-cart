import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int selectedIndex = 0;
  List<Map<String, String>> categories = [
    {"title": "Books", "image": "assets/temp/book.png"},
    {"title": "Soap", "image": "assets/temp/soap.png"},
    {"title": "Pent", "image": "assets/temp/pent.jpg"},
    {"title": "Shirt", "image": "assets/temp/shirt.jpg"},
    {"title": "Mobile", "image": "assets/temp/mobile.png"},
    {"title": "Shose", "image": "assets/temp/shose.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      appBar: AppBar(
        title: Text(
          "welcome , \ user",
          style: GoogleFonts.outfit(color: AppColors.primaryBlue),
        ),
      ),
      body: Column(
        children: [
          //   todo search Contener
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 03,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            child: TextField(
              controller: TextEditingController(),
              decoration: InputDecoration(
                hintText: "search product",
                prefixIcon: Icon(Icons.search, color: AppColors.primaryBlue),
                filled: true,
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              padding: EdgeInsets.symmetric(horizontal: 10),
              itemBuilder: (context, index) {
                var item = categories[index];
                final isselected = selectedIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 250),
                    margin: EdgeInsets.only(right: 12, top: 8, bottom: 8),
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    decoration: BoxDecoration(
                      color: isselected ? AppColors.primaryBlue : Colors.white,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: isselected ? AppColors.primaryBlue : Colors.grey,
                        width: 1.5,
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 40,
                          child: Image.asset(item["image"]!, fit: BoxFit.cover),
                        ),
                        SizedBox(width: 10),
                        Text(
                          item['titel']!,
                          style: GoogleFonts.outfit(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: isselected ? Colors.white : Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
