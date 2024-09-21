import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/view/onboarding/pages/onboarding.dart';
import 'package:flutter/material.dart';

class OnboardingRoot extends StatefulWidget {
  const OnboardingRoot({super.key});

  @override
  State<OnboardingRoot> createState() => _OnboardingRootState();
}

class _OnboardingRootState extends State<OnboardingRoot> {
  final ScrollController _scrollController = ScrollController();

  void _nextPage() {
    _scrollController.animateTo(
      _scrollController.offset + _scrollController.position.viewportDimension,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    List<Widget> images = [
      Image.asset(
        AssetImages.onboardingB,
        fit: BoxFit.cover,
      ),
      Image.asset(
        AssetImages.onboardingC,
        fit: BoxFit.cover,
      ),
      Image.asset(
        AssetImages.onboardingD,
        fit: BoxFit.cover,
      ),
    ];

    return Scaffold(
      body: Stack(children: [
        ListView(
          controller: _scrollController,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemExtent: width,
          children: images,
        ),
        OnboardingPage(
          onActionPressed: _nextPage,
        ),
      ]),
    );
  }
}
