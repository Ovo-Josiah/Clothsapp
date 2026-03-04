import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BadgeCard extends StatelessWidget {
  const BadgeCard({
    super.key,
    required this.title,
    this.height = 24,
    this.width = 40,
    this.colors = const [AppColors.primaryColor, AppColors.primaryColor],
    this.fontSize = 11,
  });

  final String title;
  final double height;
  final double width;
  final List<Color>? colors;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      width: 40,
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.black, Colors.black]),

        borderRadius: BorderRadius.circular(100),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          textAlign: TextAlign.center,
          title,
          style: TextStyle(
            fontSize: fontSize,
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontFamily: 'Metropolis',
          ),
        ),
      ),
    );
  }
}
