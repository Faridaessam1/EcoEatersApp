import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:eco_eaters_app/core/extentions/padding_ext.dart';
import 'package:eco_eaters_app/core/ui/seller/widgets/custom_status_container.dart';
import 'package:eco_eaters_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../../constants/app_colors.dart';

class NewDishView extends StatelessWidget {
  const NewDishView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final List<String> _sellerCategoriesList = [
      "Restaurant",
      "Hotel",
    ];

    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          "Add New Item",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.green,
          ),
        ),
        actions: [
          CustomStatusContainer(
            orderStatus: "Save",
            isNewDishTab: true,
            orderStatusColor: AppColors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: mediaQuery.size.width * 0.948,
              height: mediaQuery.size.height * 0.228,
              decoration: BoxDecoration(
                  color: AppColors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: AppColors.grey,
                    width: 2,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.insert_photo_outlined),
                  Text(
                    "Upload food image",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: AppColors.textGreyColor),
                  ),
                  Text(
                    "Choose file",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.green),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Dish Name",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: "Enter Dish Name",
              hintTextColor: AppColors.textGreyColor,
              filledColor: AppColors.white,
              borderColor: AppColors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Quantity",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: "Enter quantity",
              hintTextColor: AppColors.textGreyColor,
              filledColor: AppColors.white,
              borderColor: AppColors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Price",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              hintText: "Enter price",
              hintTextColor: AppColors.textGreyColor,
              filledColor: AppColors.white,
              borderColor: AppColors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Category",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: 10,
            ),
            CustomDropdown<String>(
              hintText: 'Select Category',
              items: _sellerCategoriesList,
              initialItem: null,
              onChanged: (value) {},
              decoration: CustomDropdownDecoration(
                closedBorder: Border.all(
                  color: AppColors.grey,
                  width: 1.8,
                ),
                closedBorderRadius: BorderRadius.circular(18),
                closedSuffixIcon: Icon(
                  Icons.arrow_drop_down_rounded,
                  color: AppColors.green,
                  size: 28,
                ),
                expandedSuffixIcon: Icon(
                  Icons.arrow_drop_up_rounded,
                  color: AppColors.green,
                  size: 28,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Additional information",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black),
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextFormField(
              minLines: 1,
              maxLines: 5,
              hintText: "Enter additional details",
              hintTextColor: AppColors.textGreyColor,
              filledColor: AppColors.white,
              borderColor: AppColors.grey,
            ),
          ],
        ).setPadding(context, vertical: 0.01, horizontal: 0.04),
      ),
    );
  }
}
