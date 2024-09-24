import 'package:fitness_tracker/common/widget/app_textfield.dart';
import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    return Scaffold(
      appBar: const AuthAppbar(
        titleText: 'Reset Password',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
              padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
              child: const Column(
                children: [
                  AppTextfield(
                    hintText: "••••••••••••••••••••",
                    label: "Password",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  AppTextfield(
                    hintText: "••••••••••••••••••••",
                    label: "Confirm Password",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Align(
              alignment: Alignment.center,
              child: GlassButton(
                text: "Reset Password",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
