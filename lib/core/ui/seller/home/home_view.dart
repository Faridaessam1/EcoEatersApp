import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:eco_eaters_app/core/extentions/padding_ext.dart';
import 'package:eco_eaters_app/core/ui/seller/home/widgets/custom_insights_container.dart';
import 'package:eco_eaters_app/core/ui/seller/home/widgets/custom_order_container.dart';
import 'package:eco_eaters_app/core/ui/seller/home/widgets/custom_text_button.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "EcoEaters",
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
            width: 10,
          ),
          Icon(
            Icons.sunny,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              CustomInsightsContainer(
                icon: Icons.shopping_basket_rounded,
                text: "Total Orders",
                number: "247",
              ),
              SizedBox(
                width: 30,
              ),
              CustomInsightsContainer(
                icon: Icons.attach_money,
                text: "Revenue",
                number: "1,438",
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            children: [
              CustomInsightsContainer(
                icon: Icons.restaurant,
                text: "Available Dishes",
                number: "32",
              ),
              SizedBox(
                width: 30,
              ),
              CustomInsightsContainer(
                icon: Icons.access_time_filled_rounded,
                text: "Pending Orders",
                number: "8",
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                width: mediaQuery.size.width * 0.441,
                height: mediaQuery.size.height * 0.059,
                child: CustomTextButton(
                    text: "Add New Dish",
                    textColor: AppColors.white,
                    icon: Icons.add,
                    iconColor: AppColors.white,
                    buttonColor: AppColors.green),
              ),
              SizedBox(
                width: mediaQuery.size.width * 0.441,
                height: mediaQuery.size.height * 0.059,
                child: CustomTextButton(
                    text: "Today's Order",
                    textColor: AppColors.green,
                    icon: Icons.menu_rounded,
                    iconColor: AppColors.green,
                    buttonColor: AppColors.white),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Text(
                "Recent Orders",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              Text(
                "View All",
                style: TextStyle(
                  color: AppColors.green,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          CustomOrderContainer(
              orderNumber: "2458",
              orderStatus: "Pending",
              orderStatusColor: AppColors.orange,
              orderItemCount: "2",
              orderAmount: "24:00",
              customerName: "Sarah M.",
              time: "10:00 Am"),
          SizedBox(
            height: 20,
          ),
          CustomOrderContainer(
              orderNumber: "2457",
              orderStatus: "Completed",
              orderStatusColor: AppColors.green,
              orderItemCount: "4",
              orderAmount: "52:50",
              customerName: "John D.",
              time: "9:45 Am"),
        ],
      ).setPadding(context, horizontal: 0.04, vertical: 0.01),
    );
  }
}
