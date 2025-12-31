import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';

class Search_TextField extends StatelessWidget {
  const Search_TextField({
    super.key,
    required this.fixedborder,
  });

  final InputBorder fixedborder;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        decoration: InputDecoration(
          enabledBorder: fixedborder,
          focusedBorder: fixedborder,
          border: fixedborder,
          fillColor: AppColors.greyBackgroundoftextfield,
          filled: true,
          prefixIcon: Icon(Icons.search, size: 18),
          hintText: 'Search Store',
          hintStyle: AppFontStyles.fontSize14Weight600WithGreyColor,
        ),
      ),
    );
  }
}
