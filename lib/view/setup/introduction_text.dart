import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class IntroductionText extends StatelessWidget {
  const IntroductionText({
    super.key,
    required this.title,
    required this.subtitle,
    this.backgroundColor,
  });

  final String title;
  final String subtitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.white);

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);
    return Column(
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Text(
            subtitle,
            style: smallTextStyle,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
