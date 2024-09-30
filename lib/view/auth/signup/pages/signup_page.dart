import 'package:fitness_tracker/common/widget/app_textfield.dart';
import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20,
      color: AppColors.white,
    );

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    return Scaffold(
      appBar: const MainAppbar(
        titleText: 'Create Account',
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Text(
                "Let's Start",
                style: titleTextStyle,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.purpleLight,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: const Column(
                  children: [
                    AppTextfield(
                      hintText: "Fullname",
                      label: "Fullname",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AppTextfield(
                      hintText: "+123456789",
                      label: "Email or Phone Number",
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AppTextfield(
                      hintText: "********",
                      label: "Password",
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    AppTextfield(
                      hintText: "********",
                      label: "Confirm Password",
                      obscureText: true,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text:
                          "By continuing, you agree to Terms of Use and Privacy Policy.",
                      style: smallTextStyle,
                    ),
                    TextSpan(
                      text: "Terms of Use ",
                      style: smallTextStyle.copyWith(
                        color: AppColors.limeGreen,
                      ),
                    ),
                    TextSpan(
                      text: "and ",
                      style: smallTextStyle,
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
                      style: smallTextStyle.copyWith(
                        color: AppColors.limeGreen,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.center,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: GlassButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "or sign up with",
                style: smallTextStyle,
              ),
              const SizedBox(
                height: 16,
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
                height: 20,
              ),
              Text.rich(TextSpan(
                children: [
                  TextSpan(
                    text: "Already have an account? ",
                    style: smallTextStyle,
                  ),
                  TextSpan(
                    text: "Sign Inp",
                    style: smallTextStyle.copyWith(
                      color: AppColors.limeGreen,
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
