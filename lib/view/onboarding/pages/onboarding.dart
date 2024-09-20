import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class OnboardingPage extends StatelessWidget {
  final String vectorAssetName;
  final String imageAssetName;
  final String heroText;
  final String actionText;
  final int index;

  const OnboardingPage({
    super.key,
    required this.vectorAssetName,
    required this.heroText,
    required this.actionText,
    required this.index,
    required this.imageAssetName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(imageAssetName),
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
                    SvgPicture.asset(vectorAssetName),
                    const SizedBox(height: 16),
                    Text(
                      heroText,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _IndicatorWidget(
                      index: index,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              GlassButton(
                onPressed: () {},
                text: actionText,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _IndicatorWidget extends StatelessWidget {
  final int index;
  const _IndicatorWidget({required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
    );
  }
}
