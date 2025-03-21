import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnBoardingPage2 extends StatelessWidget {
  const OnBoardingPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "How It Works",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,
              color: AppColors.darkGreen,),
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Three simple steps to reduce food waste and save money",
            style: TextStyle(fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20),
          _buildFeatureItem(Icons.store, "Restaurants List Surplus",
              "Local restaurants offer extra food at discounted prices"),
          _buildFeatureItem(Icons.search, "Browse & Order",
              "Find delicious meals available near you"),
          _buildFeatureItem(Icons.delivery_dining_outlined, "Pickup or Delivery",
              "Get your food delivered or pick it up yourself"),
          SizedBox(height: 40),
          Image.asset(AppAssets.onBoarding2, height: 200),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(icon, color: AppColors.green),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold,color: AppColors.darkGreen)),
      subtitle: Text(subtitle),
    );
  }
}
