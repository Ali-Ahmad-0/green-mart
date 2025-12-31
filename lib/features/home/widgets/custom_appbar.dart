import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          colorFilter: ColorFilter.mode(
            AppColors.primaryColorGreen,
            BlendMode.srcIn,
          ),
          'assets/icons/logo_icon.svg',
          width: 50.w,
          height: 56.h,
        ),
        SizedBox(width: 12.w),
        Text(
          'GreenMart',
          style: TextStyle(
            fontFamily: GoogleFonts.alegreyaSans().fontFamily,
            color: AppColors.primaryColorGreen,
            fontSize: 40.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
