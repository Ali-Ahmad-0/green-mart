
import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class AccountSettingsItem extends StatelessWidget {
  const AccountSettingsItem({super.key, required this.icon, required this.title});
  final String  icon , title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
            leading: SvgPicture.asset(icon),
            title: Text(
              title,
              style: AppFontStyles.fontSize20Weight400WithColorBlack,
            ),
            trailing: Icon(
              Icons.chevron_right_rounded,
              color: AppColors.primaryColorBlack,
              size: 30,
            ),
          ),
          Divider(color: AppColors.greyE2, height: 1),
        ],
      ),
    );
  }
}
