import 'package:fitness_tracker/core/config/assets/assets_vectors.dart';
import 'package:fitness_tracker/core/config/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AuthAppbar extends StatelessWidget implements PreferredSizeWidget {
  const AuthAppbar({super.key, this.titleText = '', this.leadingText});
  final String titleText;
  final String? leadingText;

  @override
  Widget build(BuildContext context) {
    TextStyle titleStyle = const TextStyle(
      color: AppColors.limeGreen,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    );

    TextStyle leadingTextStyle = const TextStyle(
      color: AppColors.limeGreen,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    );
    return AppBar(
      title: Text(titleText),
      titleTextStyle: titleStyle,
      centerTitle: true,
      leadingWidth: 84,
      leading: Padding(
        padding: const EdgeInsets.only(
          left: 32,
        ),
        child: Row(
          children: [
            SvgPicture.asset(
              AppVectors.arrow,
              width: 12,
              height: 12,
            ),
            if (leadingText != null)
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  leadingText!,
                  style: leadingTextStyle,
                ),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
