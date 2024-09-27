import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';

class GenderSelectionPage extends StatelessWidget {
  const GenderSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.white);

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);

    return Scaffold(
      appBar: const AuthAppbar(
        leadingText: 'Back',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 54),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "What’s Your Gender",
                  style: titleTextStyle,
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColors.purpleLight,
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ut labore et dolore magna aliqua.",
                    style: smallTextStyle,
                    softWrap: true,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const Flexible(
              child: _ToggleGenderIconButton(),
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

class _ToggleGenderIconButton extends StatefulWidget {
  const _ToggleGenderIconButton();

  @override
  State<_ToggleGenderIconButton> createState() =>
      _ToggleGenderIconButtonState();
}

class _ToggleGenderIconButtonState extends State<_ToggleGenderIconButton> {
  final List<bool> _selected = [false, true];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: Axis.vertical,
      isSelected: _selected,
      fillColor: AppColors.limeGreen,
      selectedColor: AppColors.black,
      constraints: const BoxConstraints(
        minWidth: 180,
        minHeight: 180,
      ),
      borderColor: Colors.white,
      selectedBorderColor: AppColors.black,
      borderRadius: BorderRadius.circular(200),
      color: Colors.white,
      onPressed: (index) {
        setState(() {
          for (var i = 0; i < _selected.length; i++) {
            _selected[i] = i == index;
          }
        });
      },
      children: const [
        Icon(
          Icons.male,
          size: 165,
        ),
        Icon(Icons.female, size: 165),
      ],
    );
  }
}
