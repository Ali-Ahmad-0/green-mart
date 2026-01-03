import 'package:build_ui/core/widgets/custom_search_field.dart';
import 'package:build_ui/core/widgets/secondary_appbar.dart';
import 'package:build_ui/features/explore/widgets/categories_grid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreView extends StatelessWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SecondaryAppbar(title: 'Find Products'),
        SizedBox(height: 30.h),
        Search_TextField(),
        SizedBox(height: 20.h),
        Expanded(child: Padding(
          padding:  EdgeInsets.symmetric(horizontal:25.w ),
          child: CategoriesGrid(),
        )),
      ],
    );
  }
}
