
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/features/home/widgets/best_selling_section.dart';
import 'package:build_ui/features/home/widgets/custom_appbar.dart';
import 'package:build_ui/features/home/widgets/custom_search_field.dart';

import 'package:build_ui/features/home/widgets/exclusive_offers_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShopScreen extends StatelessWidget {
   ShopScreen({super.key});

InputBorder fixedborder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: AppColors.greyBackgroundoftextfield),
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        SizedBox(height: 17.35.h),
        Search_TextField(fixedborder: fixedborder),
        SizedBox(height: 24.h),

        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,

            child: Column(
              children: [
                ExclusiveOffersSection(),
                SizedBox(height: 30.h),
                BestSellingSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
