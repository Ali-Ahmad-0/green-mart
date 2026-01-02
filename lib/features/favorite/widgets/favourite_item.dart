import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavouriteItem extends StatelessWidget {
  const FavouriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 20.h),
            leading: SizedBox(
              height: 55.h,
              width: 55.w,
              child: Image.asset('assets/images/drink.png'),
            ),
            title: Text(
              'Sprite Can',
              style: AppFontStyles.fontSize16Weight400WithColorBlack.copyWith(
                fontFamily: 'Gilroy',
              ),
            ),
            subtitle: Text(
              '325ml',
              style: AppFontStyles.fontSize14Weight600WithGreyColor.copyWith(
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: SizedBox(
              width: 80.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    r'$1.50',
                    style: AppFontStyles.fontSize16Weight600WithColorGreen
                        .copyWith(color: AppColors.primaryColorBlack),
                  ),
                  Icon(
                    size: 30,
                    Icons.keyboard_arrow_right_rounded,
                    color: AppColors.primaryColorBlack,
                  ),
                ],
              ),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
