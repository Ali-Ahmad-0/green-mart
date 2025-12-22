import 'package:build_ui/features/home/widgets/exclusive_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exclusive_Offer_ListView extends StatelessWidget {
  const Exclusive_Offer_ListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Exclusive_offer_item(),
          );
        },
      ),
    );
  }
}
