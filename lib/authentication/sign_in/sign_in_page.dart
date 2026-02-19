import 'package:clothesapp/utils/constants/CSizes.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:clothesapp/utils/widget/button.dart';
import 'package:clothesapp/utils/widget/input_widget.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 248, 245, 245),
        appBar: AppBar(
          leading: const Icon(Icons.arrow_back),
          backgroundColor: const Color.fromARGB(255, 248, 245, 245),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: "Metropolis",
                  letterSpacing: 2,
                ),
              ),
              SizedBox(height: 30),
              InputWidget(label: 'Email'),
              SizedBox(height: 20),
              InputWidget(
                label: 'Password',
                icon: Icons.lock,
                obscureText: true,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          'Forgot Password?',
                          style: TextStyle(
                            fontFamily: "Metropolis",
                            color: AppColors.tertiaryColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 48),
              Button(
                height: CSizes.btnHL,
                title: 'Sign In',
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
