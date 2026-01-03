import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/features/explore/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.item});
  final ItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: item.color),
        color: item.color.withAlpha((255 / 4).round()),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(item.image, fit: BoxFit.scaleDown, height: 75.h),
          SizedBox(height: 17.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Text(
              textAlign: TextAlign.center,
              item.title,
              style: AppFontStyles.fontSize20Weight400WithColorBlack.copyWith(
                fontSize: 16.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
