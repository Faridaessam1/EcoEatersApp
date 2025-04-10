import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:eco_eaters_app/ui/auth/login_screen.dart';
import 'package:eco_eaters_app/ui/auth/sign_up_screen.dart';
import 'package:eco_eaters_app/ui/auth/widget/user_type_card.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class UserTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final double screenWidth = screenSize.width;
    final double screenHeight = screenSize.height;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: screenHeight,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.primaryColor.withOpacity(0.2), AppColors.white],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: screenHeight * 0.08),
            Image.asset(AppAssets.appLogo, height: screenHeight * 0.06),
            SizedBox(height: screenHeight * 0.02),

            Text(
              "Welcome to EcoEaters",
              style: TextStyle(
                fontSize: screenWidth * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenHeight * 0.01),

            Text(
              "Choose how you want to use the app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: screenHeight * 0.04),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: UserTypeCard(icon: Icons.restaurant, text: "I'm a Customer"),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    child: UserTypeCard(icon: Icons.store, text: "I'm a Seller"),
                  ),
                ],
              ),
            ), // **Closed Padding correctly**

            SizedBox(height: screenHeight * 0.05), // **Moved outside Padding**

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.black54)),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),
                  child: Text(
                    " Sign in",
                    style: TextStyle(fontSize: screenWidth * 0.04, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
