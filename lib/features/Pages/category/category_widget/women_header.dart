import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class WomenHeader extends StatelessWidget {
  const WomenHeader({super.key, required this.title, this.promo});

  final String title;
  final String? promo;

  Widget promoWidget() {
    if (promo != null) {
      return Text(
        promo!,
        style: TextStyle(
          fontSize: 14,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      );
    }
    return const SizedBox();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: LinearGradient(
          colors: [AppColors.primaryColor, AppColors.primaryColor],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title.toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
          // SizedBox(height: 5),
          promoWidget(),
        ],
      ),
    );
  }
}
