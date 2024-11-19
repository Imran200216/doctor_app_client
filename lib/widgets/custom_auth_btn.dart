import 'package:doctor_app_client/constants/colors.dart';
import 'package:flutter/material.dart';

class CustomAuthBtn extends StatelessWidget {
  final String authImageName;
  final String btnTitle;
  final VoidCallback onTap;

  const CustomAuthBtn({
    super.key,
    required this.authImageName,
    required this.btnTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 46,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppColors.secondaryColor,
          border: Border.all(
            color: AppColors.authBtnStrokeColor,
            width: 1,
          ),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/png/$authImageName.png",
                height: 30,
                width: 30,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                textAlign: TextAlign.start,
                btnTitle,
                style: const TextStyle(
                  fontFamily: "Montserrat",
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
