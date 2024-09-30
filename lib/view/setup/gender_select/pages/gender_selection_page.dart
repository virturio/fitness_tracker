import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:flutter/material.dart';

class GenderSelectionPage extends StatelessWidget {
  const GenderSelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(
        leadingText: 'Back',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const _HeroText(),
            const Expanded(
              child: _ToggleGenderIconButton(),
            ),
            GlassButton(
              text: "Continue",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class _HeroText extends StatelessWidget {
  const _HeroText();

  @override
  Widget build(BuildContext context) {
    TextStyle titleTextStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: AppColors.white);

    TextStyle smallTextStyle =
        const TextStyle(fontSize: 14, color: AppColors.white);
    return Column(
      children: [
        Text(
          "What’s Your Gender",
          style: titleTextStyle,
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.purpleLight,
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, ut labore et dolore magna aliqua.",
            style: smallTextStyle,
            softWrap: true,
            textAlign: TextAlign.center,
          ),
        ),
      ],
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
    return LayoutBuilder(builder: (context, constraints) {
      const double padding = 24;
      final double screenHeight = MediaQuery.of(context).size.height;
      final double height = (constraints.maxHeight - (padding * 2) - 24) / 2;
      final double width = (constraints.maxWidth - (padding * 2) - 24);
      final double iconScaler = (screenHeight / height) / 2;

      final BoxConstraints fixedConstraints = BoxConstraints.tight(Size(
        width,
        height,
      ));

      return Container(
        alignment: Alignment.center,
        child: ToggleButtons(
          direction: Axis.vertical,
          isSelected: _selected,
          constraints: fixedConstraints,
          selectedColor: AppColors.black,
          fillColor: Colors.transparent,
          color: Colors.white,
          renderBorder: false,
          onPressed: (index) {
            setState(() {
              for (var i = 0; i < _selected.length; i++) {
                _selected[i] = i == index;
              }
            });
          },
          children: [
            _ToggleItem(
              icon: Icon(
                Icons.male,
                size: height / iconScaler,
              ),
              label: "Male",
              isSelected: _selected[0],
            ),
            _ToggleItem(
              icon: Icon(
                Icons.female,
                size: height / iconScaler,
              ),
              label: "Female",
              isSelected: _selected[1],
            ),
          ],
        ),
      );
    });
  }
}

class _ToggleItem extends StatelessWidget {
  const _ToggleItem({
    required this.icon,
    required this.label,
    required this.isSelected,
  });

  final Widget icon;
  final String label;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? labelStyle = textTheme.bodyLarge?.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.transparent : Colors.white,
            ),
            color: isSelected ? AppColors.limeGreen : Colors.white12,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: FittedBox(child: icon),
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: labelStyle,
        ),
      ],
    );
  }
}
