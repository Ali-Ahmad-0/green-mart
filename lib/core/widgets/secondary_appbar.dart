import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:flutter/material.dart';

class SecondaryAppbar extends StatelessWidget {
  const SecondaryAppbar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: AppFontStyles.fontSize20Weight400WithColorBlack,
      ),
    );
  }
}
