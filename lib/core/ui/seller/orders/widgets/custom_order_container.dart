import 'package:eco_eaters_app/core/ui/seller/widgets/custom_status_container.dart';
import 'package:flutter/material.dart';

import '../../../../constants/app_colors.dart';
import '../../../../widgets/custom_elevated_button.dart';

class CustomOrderContainer extends StatelessWidget {
  final String orderNumber;
  final String orderStatus;
  final Color orderStatusColor;
  final String orderDetails;
  final String orderAmount;
  final String customerName;
  final String customerAddress;
  final String time;

  CustomOrderContainer({
    super.key,
    required this.orderNumber,
    required this.orderStatus,
    required this.orderStatusColor,
    required this.time,
    required this.customerName,
    required this.customerAddress,
    required this.orderDetails,
    required this.orderAmount,
  });

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);

    return Container(
      width: mediaQuery.size.width * 0.9,
      height: mediaQuery.size.height * 0.28,
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
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              CustomStatusContainer(
                orderStatus: orderStatus,
                orderStatusColor: orderStatusColor,
              )
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                time,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Customer:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              Text(
                customerName,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Address:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              Text(
                customerAddress,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Items:",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.grey,
                ),
              ),
              Text(
                orderDetails,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "Total: \$$orderAmount",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 4,
          ),
          SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              text: "Update Status",
              fontSize: 16,
              onPressed: () {},
              textColor: AppColors.white,
              buttonColor: AppColors.green,
              borderRadius: 8.0,
            ),
          ),
        ],
      ),
    );
  }
}
