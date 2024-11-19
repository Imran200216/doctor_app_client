import 'package:doctor_app_client/constants/colors.dart';
import 'package:doctor_app_client/widgets/custom_auth_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linkfy_text/linkfy_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.primaryColor,
        child: Stack(
          children: [
            /// company name
            Padding(
              padding: const EdgeInsets.only(top: 34),
              child: Align(
                alignment: Alignment.topCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/png/app-logo.png",
                      height: 76,
                      width: 76,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      "PulsePoint",
                      style: GoogleFonts.montserrat(
                        color: AppColors.secondaryColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// login-img
            Positioned(
              top: 20,
              child: Image.asset(
                "assets/images/png/login-doctor-img.png",
                height: 514,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),

            /// auth contents
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 410,
                width: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                  color: AppColors.secondaryColor,
                ),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 32,
                    bottom: 12,
                    left: 33,
                    right: 33,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      /// title
                      const Text(
                        textAlign: TextAlign.start,
                        "Welcome to PlusPoint",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                      const SizedBox(
                        height: 13,
                      ),

                      /// sub title
                      const Text(
                        textAlign: TextAlign.start,
                        "Use your Google account to access fast and easy doctor appointment booking.",
                        style: TextStyle(
                          fontFamily: "Montserrat",
                          color: AppColors.subTitleColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),

                      /// google btn
                      CustomAuthBtn(
                        authImageName: "google-auth-img",
                        btnTitle: "Continue with Google",
                        onTap: () {},
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      /// google btn
                      CustomAuthBtn(
                        authImageName: "facebook-auth-img",
                        btnTitle: "Continue with Facebook",
                        onTap: () {},
                      ),

                      const Spacer(
                        flex: 1,
                      ),
                      LinkifyText(
                        textAlign: TextAlign.center,
                        "By signing up, you agree to the Terms of Service and Privacy Policy",
                        textStyle: const TextStyle(
                          color: AppColors.authLinkTextColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          fontFamily: "Montserrat",
                        ),
                        linkStyle: const TextStyle(
                          color: Colors.blue,
                          fontFamily: "Montserrat",
                          fontSize: 14,
                        ),
                        onTap: (link) {
                          /// do stuff with `link`
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
