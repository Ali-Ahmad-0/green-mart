import 'package:build_ui/constants/constant_colors.dart';
import 'package:build_ui/features/home/widgets/best_selling_section.dart';
import 'package:build_ui/features/home/widgets/custom_appbar.dart';
import 'package:build_ui/features/home/widgets/custom_bottom_navigationbar.dart';
import 'package:build_ui/features/home/widgets/custom_search_field.dart';

import 'package:build_ui/features/home/widgets/exclusive_offers_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  InputBorder fixedborder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: BorderSide(color: AppColors.greyBackgroundoftextfield),
  );

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(
        child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppBar(),
            SizedBox(height: 17.35.h),
            Search_TextField(fixedborder: fixedborder),
            SizedBox(height: 24.h),

            Expanded(
              child: CustomScrollView(
                scrollDirection: Axis.vertical,
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ExclusiveOffersSection(),
                        SizedBox(height: 30.h),
                        BestSellingSection(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
