import 'package:clothesapp/utils/constants/CSizes.dart';
import 'package:flutter/material.dart';

import 'package:clothesapp/utils/constants/app_colors.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.height,
    this.width = double.infinity,
    required this.title,
    this.color = AppColors.primaryColor,
    this.titleColor = AppColors.textColor,
  });

  final double height;
  final double? width;
  final String title;
  final Color? color;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(CSizes.borderRadiusM),
        ),
        child: Center(
          child: Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Metropolis",
              color: titleColor,
              fontWeight: FontWeight.w500,
              letterSpacing: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
