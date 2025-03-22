import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnBoardingPage1 extends StatelessWidget {
  const OnBoardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AppAssets.onBoardingLogo),
          SizedBox(height: 40),
          Image.asset(AppAssets.onBoardingImg),
          SizedBox(height: 30),
          Text(
            "Welcome to EcoEaters",
            style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w900,
                color: AppColors.darkGreen),
          ),
          SizedBox(height: 20),
          Text(
            "Save food, save money\n save the planet.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, color: AppColors.green,
            fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFeatureChip(
                  Icons.percent, "Up to 70% Off", AppColors.primaryColor, AppColors.green),
              SizedBox(width: 30),
              _buildFeatureChip(
                  Icons.eco, "Eco-friendly", AppColors.yellow, AppColors.orange),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildFeatureChip(
                  Icons.restaurant, "Quality Food", AppColors.primaryColor,
                  AppColors.green),
            ],
          ),

        ],
      ),
    );
  }


  Widget _buildFeatureChip(IconData icon, String text, Color bgColor,
      Color textColor) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: bgColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: AppColors.black),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w600, color: textColor),
          ),
        ],
      ),
    );
  }
}