import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextfield extends StatelessWidget {
  final String label;
  final String hintText;
  final bool obscureText;
  const AppTextfield({
    super.key,
    required this.label,
    required this.hintText,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    TextStyle hintStyle = const TextStyle(
      color: Colors.black38,
      fontSize: 16,
    );

    TextStyle labelStyle = const TextStyle(
      fontSize: 16,
      color: AppColors.black,
      fontWeight: FontWeight.bold,
    );
    Widget labelWidget = Text(
      label,
      style: labelStyle,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        labelWidget,
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          clipBehavior: Clip.hardEdge,
          child: TextField(
            obscureText: obscureText,
            decoration: InputDecoration(
              constraints: const BoxConstraints(
                minHeight: 40,
              ),
              filled: true,
              fillColor: AppColors.white,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 20,
              ),
              hintText: hintText,
              hintStyle: hintStyle,
            ),
            maxLines: 1,
          ),
        ),
      ],
    );
  }
}
