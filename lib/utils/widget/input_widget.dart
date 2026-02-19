import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    this.label,
    this.icon,
    this.obscureText,
    this.keyBoardType,
    this.controller,
    this.errorText,
  });

  final String? label;
  final IconData? icon;
  final bool? obscureText;
  final TextInputType? keyBoardType;
  final TextEditingController? controller;
  final String? errorText;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          controller: controller,
          keyboardType: keyBoardType,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            label: Text(
              label ?? '',
              style: const TextStyle(
                fontSize: 16,
                fontFamily: "Metropolis",
                color: Colors.grey,
              ),
            ),
            suffixIcon: Icon(icon),
            border: InputBorder.none,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return errorText;
            }
            return null;
          },
        ),
      ),
    );
  }
}
