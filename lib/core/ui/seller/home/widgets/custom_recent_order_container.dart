import 'package:eco_eaters_app/core/ui/seller/widgets/custom_status_container.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';

class CustomRecentOrderContainer extends StatelessWidget {
  String orderNumber;
  String orderStatus;
  Color orderStatusColor;
  String orderItemCount;
  String orderAmount;
  String customerName;
  String time;

  CustomRecentOrderContainer({
    super.key,
    required this.orderNumber,
    required this.orderStatus,
    required this.orderStatusColor,
    required this.orderItemCount,
    required this.orderAmount,
    required this.customerName,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Container(
      width: mediaQuery.size.width * 0.987,
      height: mediaQuery.size.height * 0.128,
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.lightMint,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "#$orderNumber",
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Spacer(),
              CustomStatusContainer(
                orderStatus: orderStatus,
                orderStatusColor: orderStatusColor,
              )
            ],
          ),
          Row(
            children: [
              Text(
                "$orderItemCount items",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "\$$orderAmount",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.label,
                color: AppColors.green,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                customerName,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.black,
                ),
              ),
              Spacer(),
              Text(
                time,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                  color: AppColors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
