import 'package:eco_eaters_app/core/constants/app_colors.dart';
import 'package:eco_eaters_app/core/routes/routes_name.dart';
import 'package:eco_eaters_app/core/widgets/custom_elevated_button.dart';
import 'package:eco_eaters_app/core/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../core/constants/app_assets.dart';

class ProfileTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          AppAssets.appLogo,
          height: height * 0.02,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                " Hello ,\n Farida Essam",
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: height * 0.06,),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: (){
                        Navigator.pushNamed(context,RoutesName.customerOrdersScreen);
                      },
                      text: "Your Orders ",
                      buttonColor: AppColors.primaryColor,
                      textColor: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      borderRadius: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03,),
              Text("Account Information" ,
                style: TextStyle(
                color: AppColors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ), ),
              SizedBox(height: height * 0.03,),


              Text("FullName" ,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ), ),
              SizedBox(height: height * 0.02,),
              CustomTextFormField(
                hintText: "FullName",
                filledColor: AppColors.white,
                borderColor: AppColors.black,
                hintTextColor: AppColors.grey,
              ),
              SizedBox(height: height * 0.03,),

              Text("Email" ,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ), ),
              SizedBox(height: height * 0.02,),
              CustomTextFormField(
                hintText: "Email",
                filledColor: AppColors.white,
                borderColor: AppColors.black,
                hintTextColor: AppColors.grey,
              ),
              SizedBox(height: height * 0.03,),

              Text("Phone Number" ,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ), ),
              SizedBox(height: height * 0.02,),
              CustomTextFormField(
                hintText: "Phone Number",
                filledColor: AppColors.white,
                borderColor: AppColors.black,
                hintTextColor: AppColors.grey,
              ),
              SizedBox(height: height * 0.03,),

              Text("Password" ,
                style: TextStyle(
                  color: AppColors.black,
                  fontWeight: FontWeight.w300,
                  fontSize: 14,
                ), ),
              SizedBox(height: height * 0.02,),
              CustomTextFormField(
                hintText: "Password",
                filledColor: AppColors.white,
                borderColor: AppColors.black,
                hintTextColor: AppColors.grey,
              ),
              SizedBox(height: height * 0.03,),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      onPressed: (){print("");},
                      text: "Update Profile",
                      buttonColor: AppColors.primaryColor,
                      textColor: AppColors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      borderRadius: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03,),


            ],
          ),
        ),
      ),
    );
  }

}