import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AssetImages.onboardingA),
        )),
        child: ColoredBox(
          color: Colors.black45,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Welcome to",
                style: TextStyle(
                  fontFamily: 'League Spartan',
                  fontSize: 26,
                  color: AppColors.limeGreen,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.asset(
                AssetImages.logo,
                width: 200,
              ),
              Image.asset(AssetImages.fitBody),
            ],
          ),
        ),
      ),
    );
  }
}
