import 'package:fitness_tracker/common/widget/app_textfield.dart';
import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.white);

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    return Scaffold(
      appBar: const MainAppbar(
        titleText: 'Forgotten Password',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Forgot Password?",
              style: titleTextStyle,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ut labore et dolore magna aliqua.",
                style: smallTextStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.purpleLight,
              ),
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: const AppTextfield(
                hintText: "example@example.com",
                label: "Enter your email address",
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Align(
              alignment: Alignment.center,
              child: GlassButton(
                text: "Continue",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
