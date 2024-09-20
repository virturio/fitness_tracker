import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/view/onboarding/pages/welcome_page.dart';
import 'package:fitness_tracker/view/onboarding/pages/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingRoot extends StatefulWidget {
  const OnboardingRoot({super.key});

  @override
  State<OnboardingRoot> createState() => _OnboardingRootState();
}

class _OnboardingRootState extends State<OnboardingRoot> {
  final PageController _pageController = PageController();

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    _nextPage();
  }

  void _nextPage() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        restorationId: "onboarding::page",
        controller: _pageController,
        children: [
          GestureDetector(
            onTap: _nextPage,
            child: const WelcomePage(),
          ),
          const OnboardingPage(
            heroText: "Start your journey towards a more active lifestyle",
            vectorAssetName: AppVectors.workout,
            imageAssetName: AssetImages.onboardingB,
            index: 0,
            actionText: "Next",
          ),
          const OnboardingPage(
            heroText: "Find nutrition tips that fit your lifestyle",
            vectorAssetName: AppVectors.nutrition,
            imageAssetName: AssetImages.onboardingC,
            index: 1,
            actionText: "Next",
          ),
          const OnboardingPage(
            heroText: "A community for you, challenge yourself",
            vectorAssetName: AppVectors.community,
            imageAssetName: AssetImages.onboardingD,
            index: 2,
            actionText: "Get Started Get Started",
          ),
        ],
      ),
    );
  }
}
