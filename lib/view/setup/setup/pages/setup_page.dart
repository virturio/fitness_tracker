import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SetupPage extends StatelessWidget {
  const SetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle displayMedium = const TextStyle(
      color: AppColors.limeGreen,
      fontWeight: FontWeight.w400,
      fontSize: 30,
    );

    TextStyle subtitleMedium = const TextStyle(
      fontSize: 14,
      color: AppColors.black,
      fontWeight: FontWeight.w300,
    );

    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 3,
            child: Image.asset(
              alignment: Alignment.topLeft,
              width: double.infinity,
              AssetImages.setupPageImage,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Text(
              "Consistency Is\nthe Key To progress.\nDon't Give Up!",
              textAlign: TextAlign.center,
              style: displayMedium,
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              color: AppColors.purpleLight,
            ),
            padding: const EdgeInsets.all(24),
            margin: const EdgeInsets.only(bottom: 20),
            width: double.infinity,
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.center,
              style: subtitleMedium,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: GlassButton(text: "Next", onPressed: () {}),
              ),
            ),
          )
        ],
      ),
    );
  }
}
