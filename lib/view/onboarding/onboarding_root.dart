import 'package:fitness_tracker/view/onboarding/pages/onboarding_a.dart';
import 'package:flutter/material.dart';

class OnboardingRoot extends StatelessWidget {
  const OnboardingRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnboardingA(),
    );
  }
}
