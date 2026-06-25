import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.screenBackground,
      appBar: AppBar(
        title: Text(
          "Contact us",
          style: GoogleFonts.outfit(fontWeight: FontWeight.w500, fontSize: 15),
        ),
      ),
    );
  }
}
