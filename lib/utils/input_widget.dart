import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({super.key, this.label, this.icon, this.obscureText});

  final String? label;
  final IconData? icon;
  final bool? obscureText;

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
            suffixIcon: icon != null ? Icon(icon) : null,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
