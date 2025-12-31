import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/features/home/widgets/exclusive_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExclusiveOffersSection extends StatelessWidget {
  const ExclusiveOffersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: AppFontStyles.fontSize24Weight600WithColorBlack,
                ),
                InkWell(
                  child: Text(
                    'See All',
                    style: AppFontStyles.fontSize16Weight600WithColorGreen,
                  ),
                ),
              ],
            ),
          ),
      
          SizedBox(height: 12.h),
          Padding(
            padding: const EdgeInsets.only(left: 7.0),
            child: Exclusive_Offer_ListView(),
          ),
        ],
      ),
    );
  }
}
