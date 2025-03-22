import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:eco_eaters_app/ui/auth/login_screen.dart';
import 'package:eco_eaters_app/ui/auth/widget/user_type_card.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class UserTypeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
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
            SizedBox(height: 60),
            Image.asset(AppAssets.appLogo, height: 50),
            SizedBox(height: 20),

            Text(
              "Welcome to ecoeaters",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),

            Text(
              "Choose how you want to use the app",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 30),


            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  UserTypeCard(icon: Icons.restaurant, text: "I'm a Customer"),
                  SizedBox(height: 30),
                  UserTypeCard(icon: Icons.store, text: "I'm a Seller"),
                ],
              ),
            ),
            SizedBox(height: 40),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?", style: TextStyle(fontSize: 16, color: Colors.black54)),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => LoginScreen())),
                  child: Text(
                    " Sign in",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.primaryColor),
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
