import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nex_cart/utils/appcolors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final contactController = TextEditingController();
  final passwordController = TextEditingController();

  bool isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBlue,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "Welcome Nex Cart",
                  style: GoogleFonts.outfit(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Login to continue shopping",
                  style: GoogleFonts.outfit(
                    color: Colors.white70,
                  ),
                ),

                SizedBox(height: 30),

                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 15,
                        offset: Offset(0, 8),
                      )
                    ],
                  ),
                  child: Column(
                    children: [

                      _modernField(
                        contactController,
                        "Contact Number",
                        Icons.phone,
                        isNumber: true,
                        isObscured: false,
                        toggleVisibility: () {},
                      ),

                      SizedBox(height: 15),

                      _modernField(
                        passwordController,
                        "Password",
                        Icons.lock,
                        isPassword: true,
                        isObscured: isPasswordObscured,
                        toggleVisibility: () {
                          setState(() {
                            isPasswordObscured =
                            !isPasswordObscured;
                          });
                        },
                      ),

                       SizedBox(height: 10),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child:  Text(
                            "Forgot Password?",
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      InkWell(
                        onTap: _loginUser,
                        borderRadius: BorderRadius.circular(15),
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(
                            vertical: 14,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                               AppColors.primaryBlue
                              ],
                            ),
                            borderRadius:
                            BorderRadius.circular(15),
                            boxShadow:  [
                              BoxShadow(
                                color: Colors.blueAccent,
                                blurRadius: 10,
                                offset: Offset(0, 5),
                              )
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight:
                                FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),

                      Row(
                        mainAxisAlignment:
                        MainAxisAlignment.center,
                        children: [

                          Text(
                            "Don't have a account?",
                          ),

                          TextButton(
                            onPressed: () {
                            },
                            child: Text(
                              "Register here!",
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _modernField(
      TextEditingController controller,
      String hint,
      IconData icon, {
        bool isPassword = false,
        bool isNumber = false,
        required bool isObscured,
        required VoidCallback toggleVisibility,
      }) {
    return TextField(
      controller: controller,
      obscureText:
      isPassword ? isObscured : false,
      keyboardType: isNumber
          ? TextInputType.number
          : TextInputType.text,
      decoration: InputDecoration(
        hintText: hint,

        prefixIcon: Icon(
          icon,
          color: AppColors.lightBlue,
        ),

        suffixIcon: isPassword
            ? IconButton(
          onPressed: toggleVisibility,
          icon: Icon(
            isObscured
                ? Icons.visibility_off
                : Icons.visibility,
            color:
            AppColors.lightBlue,
          ),
        )
            : null,

        enabledBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(14),
          borderSide: BorderSide(
            color: AppColors.lightBlue
                .withOpacity(0.3),
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius:
          BorderRadius.circular(12),
          borderSide: BorderSide(
            color: AppColors.primaryBlue,
            width: 2,
          ),
        ),

        filled: true,
        fillColor: Colors.grey.shade100,
      ),
    );
  }

  Future<void> _loginUser() async {

    final contact =
    contactController.text.trim();

    final password =
    passwordController.text.trim();

    if (contact.isEmpty ||
        password.isEmpty) {

      Get.snackbar(
        "Error",
        "All fields are required",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    } else if (contact.length != 10) {
      Get.snackbar(
        "Error",
        "Contact number must be 10 digits",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );

    } else {
      Get.snackbar(
        "Success",
        "Login Successful",
        backgroundColor: Colors.green,
        colorText: Colors.white,
      );

    }
  }
}