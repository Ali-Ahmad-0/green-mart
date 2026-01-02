import 'package:build_ui/core/constants/app_font_styles.dart';
import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:svg_flutter/svg.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedLabelStyle: AppFontStyles.fontSize12Weight400WithGreenColor
          .copyWith(letterSpacing: 0),
      selectedLabelStyle: AppFontStyles.fontSize12Weight400WithGreenColor
          .copyWith(letterSpacing: 0, fontWeight: FontWeight.w600),
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.primaryColorGreen,
      unselectedItemColor: Colors.black,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      items: [
        _buildBottomNavItem(
          screen: Routes.homeScreen,
          iconPath:
              'assets/icons/store_icon.svg', // Replace with your actual SVG file names
          label: 'Shop',
          index: 0,
        ),
        _buildBottomNavItem(
          screen: Routes.exploreScreen,
          iconPath: 'assets/icons/explore_icon.svg',
          label: 'Explore',
          index: 1,
        ),
        _buildBottomNavItem(
          screen: Routes.cartScreen,
          iconPath: 'assets/icons/cart_icon.svg',
          label: 'Cart',
          index: 2,
        ),
        _buildBottomNavItem(
          screen: Routes.favoriteScreen,
          iconPath: 'assets/icons/favorite_icon.svg',
          label: 'Favourite',
          index: 3,
        ),
        _buildBottomNavItem(
          screen: Routes.profileScreen,
          iconPath: 'assets/icons/profile_icon.svg',
          label: 'Account',
          index: 4,
        ),
      ],
    );
  }

  BottomNavigationBarItem _buildBottomNavItem({
    required String iconPath,
    required String label,
    required int index,
    required String screen,
  }) {
    final isSelected = currentIndex == index;
    final color = isSelected ? AppColors.primaryColorGreen : Colors.black;

    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        iconPath,
        colorFilter: ColorFilter.mode(
          color,
          BlendMode.srcIn,
        ), // paint the icon with the selected color
        height: 18,
        width: 18,
      ),
      label: label,
    );
  }
}
