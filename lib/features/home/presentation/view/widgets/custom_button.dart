import 'package:flutter/material.dart';
import 'package:responsive_dash_board/core/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, this.textColor, this.buttonColor, required this.text});
  final Color? textColor, buttonColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: buttonColor ?? const Color(0xff48AAE1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppStyles.styleSemiBold18(context).copyWith(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
