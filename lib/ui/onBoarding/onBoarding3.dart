import 'package:eco_eaters_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';
import '../../core/constants/app_colors.dart';

class OnBoardingPage3 extends StatelessWidget {
  const OnBoardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: TextButton(
              onPressed: () {},
              child: const Text("Skip", style: TextStyle(color: Colors.grey)),
            ),
          ),
          Align(
              alignment: Alignment.center,
              child: Image.asset(AppAssets.onBoarding3, height: 300)),
          const Center(
            child: Text(
              "Amazing Benefits Await",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          const Center(
            child: Text(
              "Join our community of conscious \nconsumers and enjoy these perks",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black38),
            ),
          ),
          _buildFeatureItem(Icons.local_offer, "Save up to 50%",
              "Quality meals at amazing prices"),
          _buildFeatureItem(
              Icons.eco, "Reduce Food Waste", "Help save the environment"),
          _buildFeatureItem(
              Icons.store, "Support Local", "Help local restaurants thrive"),
        ],
      ),
    );
  }

  Widget _buildFeatureItem(IconData icon, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: AppColors.lightMint, size: 25),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: const TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
