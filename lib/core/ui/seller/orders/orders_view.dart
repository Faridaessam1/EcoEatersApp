import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Order Management",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.green,
          ),
        ),
        actions: [
          Icon(
            Icons.notifications_rounded,
          ),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
