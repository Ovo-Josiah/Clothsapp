import 'package:flutter/material.dart';

import 'package:clothesapp/utils/constants/app_colors.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Button',
            style: const TextStyle(
              fontSize: 16,
              fontFamily: "Metropolis",
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
