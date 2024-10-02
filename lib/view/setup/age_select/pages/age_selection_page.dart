import 'package:fitness_tracker/common/widget/glass_buton.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:fitness_tracker/view/auth/widget/auth_appbar.dart';
import 'package:fitness_tracker/view/setup/introduction_text.dart';
import 'package:flutter/material.dart';

class AgeSelectionPage extends StatefulWidget {
  const AgeSelectionPage({super.key});

  @override
  State<AgeSelectionPage> createState() => _AgeSelectionPageState();
}

class _AgeSelectionPageState extends State<AgeSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppbar(leadingText: 'Back'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const IntroductionText(
            title: "How Old Are You?",
            subtitle:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
          ),
          const _AgeSelectionWidget(),
          GlassButton(
            text: "Continue",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class _AgeSelectionWidget extends StatefulWidget {
  const _AgeSelectionWidget();

  @override
  State<_AgeSelectionWidget> createState() => __AgeSelectionWidgetState();
}

class __AgeSelectionWidgetState extends State<_AgeSelectionWidget> {
  int _selectedAge = 18;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final TextStyle? textStyle = textTheme.displayLarge?.copyWith(
      fontWeight: FontWeight.bold,
      color: Colors.white,
    );

    return Column(
      children: [
        Text(
          _selectedAge.toString(),
          style: textStyle,
        ),
        const Icon(
          Icons.arrow_drop_up_rounded,
          size: 80,
          color: AppColors.limeGreen,
        ),
        _HorizontalAgeSlider(
          selectedAge: _selectedAge,
          from: 0,
          to: 120,
          magnification: 1.3,
          onChange: (age) {
            setState(() {
              _selectedAge = age;
            });
          },
        )
      ],
    );
  }
}

class _HorizontalAgeSlider extends StatefulWidget {
  const _HorizontalAgeSlider({
    required this.selectedAge,
    required this.from,
    required this.to,
    required this.magnification,
    required this.onChange,
  });

  final int selectedAge;
  final int from;
  final int to;
  final double magnification;
  final void Function(int) onChange;

  @override
  State<_HorizontalAgeSlider> createState() => _HorizontalAgeSliderState();
}

class _HorizontalAgeSliderState extends State<_HorizontalAgeSlider> {
  late final ScrollController controller;
  late int selectedAge;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController(
      initialItem: widget.selectedAge - widget.from,
    );
    selectedAge = widget.selectedAge - widget.from;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    const double magnification = 1.3;
    const BorderSide borderSide = BorderSide(color: Colors.white, width: 2);
    final double itemExtent = (MediaQuery.sizeOf(context).width) / 5;

    return Stack(
      alignment: Alignment.center,
      children: [
        _AgeSliderLayout(
          controller: controller,
          itemExtent: itemExtent,
          selectedAge: selectedAge,
          magnification: widget.magnification,
          from: widget.from,
          to: widget.to,
          onChange: (age) {
            setState(() {
              selectedAge = age;
              widget.onChange(age);
            });
          },
        ),
        Container(
          width: itemExtent * magnification,
          height: itemExtent + 48,
          decoration: const BoxDecoration(
              border: Border(
            left: borderSide,
            right: borderSide,
          )),
        )
      ],
    );
  }
}

class _AgeSliderLayout extends StatelessWidget {
  const _AgeSliderLayout({
    required this.selectedAge,
    required this.from,
    required this.to,
    required this.itemExtent,
    required this.magnification,
    required this.onChange,
    required this.controller,
  });

  final double itemExtent;
  final ScrollController controller;
  final int selectedAge;
  final int from;
  final int to;
  final double magnification;
  final void Function(int) onChange;

  final double _perspective = 0.0001;
  final double _overAndUnderCenterOpacity = 0.4;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.purpleLight,
      height: itemExtent + 24,
      child: RotatedBox(
        quarterTurns: 3,
        child: ListWheelScrollView(
          controller: controller,
          overAndUnderCenterOpacity: _overAndUnderCenterOpacity,
          perspective: _perspective,
          magnification: magnification,
          useMagnifier: true,
          onSelectedItemChanged: (i) {
            onChange(i + from);
          },
          physics: const FixedExtentScrollPhysics(),
          itemExtent: itemExtent,
          children: [
            for (int i = from; i <= to; i++)
              _AgeSliderItem(
                age: i,
                isSelected: selectedAge == i,
              )
          ],
        ),
      ),
    );
  }
}

class _AgeSliderItem extends StatelessWidget {
  const _AgeSliderItem({
    required this.age,
    required this.isSelected,
  });

  final int age;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        age.toString(),
        style: TextStyle(
          fontSize: 36,
          color: isSelected ? Colors.white : AppColors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
