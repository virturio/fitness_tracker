import 'package:fitness_tracker/common/widget/app_textfield.dart';
import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.white);

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    return Scaffold(
      appBar: const AuthAppbar(
        titleText: 'Log In',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 38),
          child: Column(
            children: [
              Text(
                "Welcome",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                  style: smallTextStyle,
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 84,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.purpleLight,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 28, horizontal: 32),
                child: Column(
                  children: [
                    const AppTextfield(
                      hintText: "example@example.com",
                      label: "Username or Email",
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppTextfield(
                      hintText: "Password",
                      label: "Password",
                      obscureText: true,
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot password?",
                        style: smallTextStyle.copyWith(
                          color: AppColors.black.withOpacity(.7),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: GlassButton(
                  text: "Log In",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "or sign up with",
                style: smallTextStyle,
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(AppVectors.google),
                  const SizedBox(width: 8),
                  SvgPicture.asset(AppVectors.facebook),
                  const SizedBox(width: 8),
                  SvgPicture.asset(AppVectors.fingerprint),
                ],
              ),
              const SizedBox(
                height: 44,
              ),
              Text(
                "Don’t have an account? ",
                style: smallTextStyle,
              ),
              Text(
                "Sign Up",
                style: smallTextStyle.copyWith(
                  color: AppColors.limeGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
