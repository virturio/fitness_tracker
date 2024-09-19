import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.purple),
    fontFamily: 'Poppins',
  );
}
