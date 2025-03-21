import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class CustomElevatedButton extends StatelessWidget {
  String? text;
  Color? buttonColor;
  Color? textColor;
  Function()? onPressed;
  Widget? child;
  double? fontSize;
  String? fontFamily;
  FontWeight? fontWeight;
  double borderRadius;

  CustomElevatedButton({
    super.key,
    this.text,
    this.buttonColor,
    this.textColor,
    this.onPressed,
    this.child,
    this.fontFamily,
    this.fontWeight,
    this.fontSize = 20,
    this.borderRadius = 16,
  });


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        padding: const EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: AppColors.primaryColor),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text!,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: fontWeight,
          fontSize: fontSize,
          fontFamily:fontFamily,
          color: textColor,
        ),
      ),
    );
  }
}
