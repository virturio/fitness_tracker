import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';
import 'package:flutter/material.dart';

class OnboardingB extends StatelessWidget {
  const OnboardingB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(AssetImages.onboardingB),
        )),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.purpleLight,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset(AppVectors.workout),
                    const SizedBox(height: 16),
                    const Text(
                      "Start your journey towards a more active lifestyle",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: 50,
                      height: 8,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GlassButton(
                onPressed: () {},
                text: "Next",
              )
            ],
          ),
        ),
      ),
    );
  }
}
