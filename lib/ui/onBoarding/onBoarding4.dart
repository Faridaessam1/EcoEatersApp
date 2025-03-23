import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnBoardingPage4 extends StatelessWidget {
  const OnBoardingPage4({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Padding(
        padding: EdgeInsets.all(size.width * 0.08),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {},
                child: Text("Skip", style: TextStyle(color: Colors.grey)),
              ),
            ),
            Image.asset(AppAssets.onBoarding4, height: size.height * 0.25),
            SizedBox(height: size.height * 0.04),
            Text(
              "Join EcoEaters Today",
              style: TextStyle(fontSize: size.width * 0.06, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: size.height * 0.015),
            Text(
              "Be part of the solution. Save money while helping reduce food waste in your community.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: size.width * 0.04, color: Colors.grey),
            ),
            SizedBox(height: size.height * 0.02),


            Column(
              children: [
                _buildSocialButton("Continue with Email", AppColors.primaryColor, AppAssets.emailIcon, size),
                _buildSocialButton("Continue with Google", Colors.white, AppAssets.googleIcon, size),
                _buildSocialButton("Continue with Apple", AppColors.primaryColor, AppAssets.appleIcon, size),
              ],
            ),

            SizedBox(height: size.height * 0.05),


            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: TextStyle(fontSize: size.width * 0.035, color: Colors.black),
                    children: [
                      TextSpan(text: "By continuing, you agree to our "),
                      TextSpan(
                        text: "Terms of Service",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, "/terms");
                          },
                      ),
                      TextSpan(text: " and "),
                      TextSpan(
                        text: "Privacy Policy",
                        style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, "/privacy");
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ),

          ],
        ),
    );
  }

  Widget _buildSocialButton(String text, Color color, String imagePath, Size size) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: size.height * 0.01),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.099,
            vertical: size.height * 0.01,
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        ),
        icon: Image.asset(imagePath, height: size.width * 0.06, width: size.width * 0.06),
        label: Text(
          text,
          style: TextStyle(color: color == Colors.black ? Colors.white : Colors.black, fontSize: size.width * 0.04),
        ),
        onPressed: () {},
      ),
    );
  }
}
