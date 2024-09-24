import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SetFingerprintPage extends StatelessWidget {
  const SetFingerprintPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    double containerHeight = MediaQuery.of(context).size.width * 0.5;

    return Scaffold(
      appBar: const AuthAppbar(
        titleText: 'Set Your Fingerprint',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ut labore et dolore magna aliqua.",
                style: smallTextStyle,
                softWrap: true,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Container(
              height: containerHeight,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: AppColors.purpleLight,
              ),
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 32),
              child: FittedBox(
                child: SvgPicture.asset(AppVectors.fingerprintMark),
              ),
            ),
            const SizedBox(
              height: 44,
            ),
            Align(
              alignment: Alignment.center,
              child: GlassButton(
                text: "Skip",
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.center,
              child: GlassButton(
                text: "Continue",
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
