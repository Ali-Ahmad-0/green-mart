import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/core/widgets/custom_floating_button.dart';
import 'package:build_ui/core/widgets/secondary_appbar.dart';
import 'package:build_ui/features/favorite/widgets/favourite_item.dart';
import 'package:build_ui/features/favorite/widgets/foavourit_items_listview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondaryAppbar(title: 'Favorite'),
        SizedBox(height: 32.h),
        Divider(color: AppColors.greyE2, height: 1),
        Expanded(child: FoavouritItemsListview()),
        CustomFloatingButton(),
      ],
    );
  }
}
