import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/features/home/card_item_model.dart';
import 'package:build_ui/features/home/widgets/exclusive_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BestSellingSection extends StatelessWidget {
  BestSellingSection({super.key});
  List<CardItemModel> item = [
    CardItemModel(
      coantity: '1 Kg',
      imagePath: 'assets/images/pepper.png',
      price: '4.99',
      title: 'Bell Pepper Red',
    ),
    CardItemModel(
      coantity: '250 gm',
      imagePath: 'assets/images/ginger.png',
      price: '4.20',
      title: 'Bell Pepper Red',
    ),
  ];
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
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: item.length,
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
                child: Exclusive_offer_item(item: item[index]),
              ),
            );
          },
        ),
      ],
    );
  }
}
