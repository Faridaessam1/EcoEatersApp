import 'package:flutter/material.dart';

import '../../../core/constants/app_colors.dart';

class CustomTabBarItem extends StatelessWidget {
  String text;
  bool isSelected;

  CustomTabBarItem({
    required this.text,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryColor : AppColors.lightGrey,
        borderRadius: BorderRadius.circular(46),

      ),
      child: Text(text, style: TextStyle(
          color: isSelected ? AppColors.white : AppColors.black
      ),),
    );
  }
}
