import 'package:build_ui/constants/app_font_styles.dart';
import 'package:build_ui/constants/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:svg_flutter/svg_flutter.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 66),
          // Image.asset('Assets/Images/logo_of_app.svg'),
          // Center(
          //   child: SvgPicture.asset(
          //     'Assets/Images/logo_of_app.svg',
          //     width: 50,
          //     height: 56,
          //   ),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('Assets/Images/carrot_logo.svg'),
              const SizedBox(width: 6),
              Column(
                children: [
                  SvgPicture.asset('Assets/Images/name_of_logo.svg'),
                  const SizedBox(height: 3),
                  Text(
                    'online groceriet',
                    style: AppFontStyles.fontSize12Weight400WithGreenColor,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 17.35),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.greyBackgroundoftextfield,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.greyBackgroundoftextfield,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(
                    color: AppColors.greyBackgroundoftextfield,
                  ),
                ),
                fillColor: AppColors.greyBackgroundoftextfield,
                filled: true,
                prefixIcon: Icon(Icons.search, size: 18),
                hintText: 'Search Store',
                hintStyle: AppFontStyles.fontSize14Weight600WithGreyColor,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: AppFontStyles.fontSize24Weight600WithColorBlack,
                ),
                Text(
                  'See All',
                  style: AppFontStyles.fontSize16Weight600WithColorGreen,
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),
          Container(
            padding: EdgeInsets.all(14),
            height: 250,
            width: 175,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Color(0xffe2e2e2), width: 1),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset('Assets/Images/banana_image.svg', height: 80),
                const SizedBox(height: 25),
                Text(
                  'Organic Bananas',
                  style: AppFontStyles.fontSize16Weight400WithColorBlack,
                ),
                const SizedBox(height: 6),
                Text(
                  '7pcs',
                  style: AppFontStyles.fontSize14Weight600WithGreyColor
                      .copyWith(fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$4.99',
                      style: AppFontStyles.fontSize24Weight600WithColorBlack
                          .copyWith(fontSize: 18),
                    ),

                    Container(
                      height: 46,
                      width: 46,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xff53b175),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
