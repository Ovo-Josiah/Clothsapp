import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class TCircularContianer extends StatelessWidget {
  const TCircularContianer({
    super.key,
    this.height = 400,
    this.width = 400,
    this.backroundColor = AppColors.app,
    this.radius = 400,
    this.child,
    this.padding = 0,
  });

  final double? height;
  final double? width;
  final Color backroundColor;
  final double radius;
  final Widget? child;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backroundColor,
      ),
      child: child,
    );
  }
}
