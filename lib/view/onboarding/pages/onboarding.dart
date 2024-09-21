import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class OnboardingPage extends StatefulWidget {
  final VoidCallback onActionPressed;

  const OnboardingPage({
    super.key,
    required this.onActionPressed,
  });

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    List<_OnBoardingContentData> contents = [
      _OnBoardingContentData(
        contentText: "Start your journey towards a more active lifestyle",
        contentIcon: SvgPicture.asset(AppVectors.workout),
        actionText: "Next",
      ),
      _OnBoardingContentData(
        contentText: "Find nutrition tips that fit your lifestyle",
        contentIcon: SvgPicture.asset(AppVectors.nutrition),
        actionText: "Next",
      ),
      _OnBoardingContentData(
        contentText: "A community for you, challenge yourself",
        contentIcon: SvgPicture.asset(AppVectors.community),
        actionText: "Get Started",
      ),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: AppColors.purpleLight,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          height: 200,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _OnBoardingContent(
                contentText: contents[index].contentText,
                icon: contents[index].contentIcon,
              ),
              const SizedBox(height: 16),
              _IndicatorWidget(
                itemCount: contents.length,
                index: index,
              )
            ],
          ),
        ),
        const SizedBox(height: 16),
        GlassButton(
          onPressed: () {
            if (index >= contents.length - 1) return;
            widget.onActionPressed();
            setState(() {
              index++;
            });
          },
          text: contents[index].actionText,
        )
      ],
    );
  }
}

class _OnBoardingContentData {
  final String contentText;
  final String actionText;
  final Widget contentIcon;

  const _OnBoardingContentData({
    required this.contentText,
    required this.contentIcon,
    required this.actionText,
  });
}

class _OnBoardingContent extends StatefulWidget {
  final Widget icon;
  final String contentText;
  const _OnBoardingContent({
    required this.icon,
    required this.contentText,
  });

  @override
  State<_OnBoardingContent> createState() => _OnBoardingContentState();
}

class _OnBoardingContentState extends State<_OnBoardingContent>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animation;

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
    _animation.forward();
  }

  @override
  void didUpdateWidget(covariant _OnBoardingContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    _animation.reset();
    _animation.forward();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        child: Column(
          children: [
            widget.icon,
            const SizedBox(height: 16),
            Text(
              widget.contentText,
              softWrap: true,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),
          ],
        ),
        builder: (context, child) {
          return Opacity(
            opacity: _animation.value,
            child: child,
          );
        });
  }
}

class _IndicatorWidget extends StatelessWidget {
  final int index;
  final int itemCount;
  const _IndicatorWidget({required this.index, required this.itemCount});

  @override
  Widget build(BuildContext context) {
    double width = 60 / itemCount;
    double height = 5;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (int i = 0; i < itemCount; i++)
          Container(
            width: width,
            height: height,
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: i == index ? AppColors.white : AppColors.purple,
            ),
          ),
      ],
    );
  }
}
