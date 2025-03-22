import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnBoardingPage4 extends StatelessWidget {
  const OnBoardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Image.asset(AppAssets.onBoarding4, height: 200),
          SizedBox(height: 30),
          Text(
            "Join EcoEaters Today",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            "Be part of the solution. Save money while helping reduce food waste in your community.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
          SizedBox(height: 40),
          _buildSocialButton("Continue with Email",   AppColors.primaryColor, AppAssets.emailIcon),
          _buildSocialButton("Continue with Google", Colors.white,AppAssets.googleIcon),
          _buildSocialButton("Continue with Apple", AppColors.primaryColor, AppAssets.appleIcon),
          SizedBox(height: 30),
    RichText(
    textAlign: TextAlign.center,
    text: TextSpan(
    style: TextStyle(fontSize: 14, color: Colors.black),
    children: [
    TextSpan(
    text: "By continuing, you agree to our ",
    ),
    TextSpan(
    text: "Terms of Service",
    style: TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    ),
    recognizer: TapGestureRecognizer()
    ..onTap = () {
    // Navigate to Terms of Service page
    Navigator.pushNamed(context, "/terms");
    },
    ),
    TextSpan(
    text: " and ",
    ),
    TextSpan(
    text: "Privacy Policy",
    style: TextStyle(
    color: AppColors.primaryColor,
    fontWeight: FontWeight.bold,
    decoration: TextDecoration.underline,
    ),
    recognizer: TapGestureRecognizer()
    ..onTap = () {
    // Navigate to Privacy Policy page
    Navigator.pushNamed(context, "/privacy");
    },
    ),
        ],
      ),
    ),
      ]
      ),
    );
  }

  Widget _buildSocialButton(String text, Color color, String imagePath) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        icon: Image.asset(imagePath, height: 24, width: 24),
        label: Text(
          text,
          style: TextStyle(color: color == Colors.black ? Colors.white : Colors.black),
        ),
        onPressed: () {

        },
      ),
    );
  }
}
