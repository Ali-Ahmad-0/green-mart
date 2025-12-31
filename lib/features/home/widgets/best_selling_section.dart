import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/features/home/widgets/exclusive_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellingSection extends StatelessWidget {
  const BestSellingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Best Selling',
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
        GridView.builder(
          shrinkWrap: true,
          itemCount: 8,
          scrollDirection: Axis.vertical,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .7,
          ),
          itemBuilder: (context, index) {
            return SizedBox(
              height: 250.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Exclusive_offer_item(),
              ),
            );
          },
        ),
      ],
    );
  }
}
