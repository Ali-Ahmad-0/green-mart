
import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25),
      child: SizedBox(
        width: 364.w,
        height: 67.h,
        child: FloatingActionButton(
          elevation: 3,
          splashColor: Colors.green,
          backgroundColor: AppColors.primaryColorGreen,
          onPressed: () {},
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(19)),
          ),
          child: Text(
            'Add All To Cart',
            style: AppFontStyles.font18Weight600white,
          ),
        ),
      ),
    );
  }
}
