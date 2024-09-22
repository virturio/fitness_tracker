import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppbar({super.key, required this.titleText});
  final String titleText;

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = const TextStyle(
      color: AppColors.limeGreen,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );
    return AppBar(
        title: Text(titleText),
        titleTextStyle: titleStyle,
        centerTitle: true,
        leadingWidth: 38,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            top: 8,
          ),
          child: InkWell(
            onTap: () => Navigator.maybePop(context),
            splashColor: AppColors.limeGreen,
            child: Ink(
              child: SvgPicture.asset(
                AppVectors.arrow,
              ),
            ),
          ),
        ));
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
