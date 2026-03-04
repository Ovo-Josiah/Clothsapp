import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class WomenHeader extends StatelessWidget {
  const WomenHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.primaryColor],
        ),
      ),
      child: Center(
        child: Text(
          title.toUpperCase(),
          style: TextStyle(fontSize: 30, color: Colors.white, letterSpacing: 2),
        ),
      ),
    );
  }
}
