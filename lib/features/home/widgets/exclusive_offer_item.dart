import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/features/home/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exclusive_offer_item extends StatelessWidget {
  const Exclusive_offer_item({super.key, required this.item});
  final CardItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      height: 250.h,
      width: 175.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xffe2e2e2), width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset(item.imagePath, height: 100.h),
          ),
          SizedBox(height: 25.h),
          Text(
            item.title,
            style: AppFontStyles.fontSize16Weight400WithColorBlack,
          ),
          SizedBox(height: 5.h),
          Text(
            item.coantity,
            style: AppFontStyles.fontSize14Weight600WithGreyColor.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                r'$' + item.price,
                style: AppFontStyles.fontSize24Weight600WithColorBlack.copyWith(
                  fontSize: 18,
                ),
              ),

              Container(
                height: 46,
                width: 46,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  color: AppColors.primaryColorGreen,
                ),
                child: Icon(Icons.add, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
