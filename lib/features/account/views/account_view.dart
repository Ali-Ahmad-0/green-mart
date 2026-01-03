import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/features/account/widgets/account_settings_item.dart';
import 'package:build_ui/features/account/widgets/profile_info_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountView extends StatelessWidget {
  AccountView({super.key});
  // my detail , deleviry address , payment methods , promo codes , notifications ,help , about
  List<AccountSettingsItem> settingsList = [
    AccountSettingsItem(icon: Icons.shopping_bag_outlined, title: 'Orders'),
    AccountSettingsItem(icon: Icons.data_array, title: 'My Details'),
    AccountSettingsItem(
      icon: Icons.location_on_outlined,
      title: 'Delivery address',
    ),

    AccountSettingsItem(
      icon: Icons.payment,
      title: 'Payment methods',
    ),
    AccountSettingsItem(
      icon: Icons.discount_outlined,
      title: 'Promo codes',
    ),
    AccountSettingsItem(
      icon: Icons.notifications_active_outlined,
      title: 'Notifications',
    ),
    AccountSettingsItem(icon: Icons.help_outline_sharp, title: 'Help'),
    AccountSettingsItem(icon: Icons.info_outline, title: 'About'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileInfoSection(),
        SizedBox(height: 18.h),
        Divider(color: AppColors.greyE2, height: 1),
        ListView.builder(
          // physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: settingsList.length,
          itemBuilder: (context, index) {
            return settingsList[index];
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120),
          child: SizedBox(
            width: 364.w,
            height: 67.h,
            child: FloatingActionButton(
              elevation: 0,
              splashColor: Colors.green,
              backgroundColor: AppColors.greyBackgroundoftextfield,
              onPressed: () {},
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(19)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.logout, color: AppColors.primaryColorGreen),
                  Text(
                    'Log out',
                    style: AppFontStyles.fontSize16Weight600WithColorGreen,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
