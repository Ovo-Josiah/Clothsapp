import 'package:clothesapp/utils/constants/c_sizes.dart';
import 'package:clothesapp/utils/constants/app_colors.dart';
import 'package:clothesapp/utils/constants/image_strings.dart';
// import 'package:clothesapp/utils/themes/custom_themes/text_theme.dart';
import 'package:clothesapp/utils/widget/button.dart';
import 'package:clothesapp/utils/widget/input_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: "Metropolis",
                    letterSpacing: 2,
                  ),
                  // style: Theme.of(context).CTextTheme.headlineLarge,
                ),
                SizedBox(height: 30),
                Form(
                  child: Column(
                    children: [
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
                            onTap: () => context.go('/forgot'),
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
                        title: 'login',
                        color: AppColors.primaryColor,
                        onTap: () => context.go('/home'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 100),
                // Divider
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Divider(
                        color: AppColors.tertiaryColor,
                        thickness: 1,
                        indent: 60,
                        endIndent: 5,
                      ),
                    ),
                    Text(
                      "Or sign up with",
                      // style: TextStyle(
                      //   fontFamily: "Metropolis",
                      //   color: AppColors.tertiaryColor,
                      //   fontWeight: FontWeight.w500,
                      //   fontSize: 14,
                      // ),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    Flexible(
                      child: Divider(
                        color: AppColors.tertiaryColor,
                        thickness: 1,
                        indent: 5,
                        endIndent: 60,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 50),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(ImageStrings.googleIcon),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                    SizedBox(width: 30),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Image(
                          image: AssetImage(ImageStrings.fbIcon),
                          height: 40,
                          width: 40,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
