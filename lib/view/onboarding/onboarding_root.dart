import 'package:fitness_tracker/core/config/assets/assets_images.dart';
import 'package:fitness_tracker/view/onboarding/pages/onboarding.dart';
import 'package:fitness_tracker/view/onboarding/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class OnboardingRoot extends StatefulWidget {
  const OnboardingRoot({super.key});

  @override
  State<OnboardingRoot> createState() => _OnboardingRootState();
}

class _OnboardingRootState extends State<OnboardingRoot> {
  final ScrollController _scrollController = ScrollController();
  bool _showWelcomePage = true;

  void _nextPage() {
    _scrollController.animateTo(
      _scrollController.offset + _scrollController.position.viewportDimension,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      _showWelcomePage = false;
    });
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
      body: _showWelcomePage
          ? const WelcomePage()
          : Stack(children: [
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
