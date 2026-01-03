import 'package:build_ui/features/home/card_item_model.dart';
import 'package:build_ui/features/home/widgets/exclusive_offer_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Exclusive_Offer_ListView extends StatelessWidget {
  Exclusive_Offer_ListView({super.key});
  List<CardItemModel> items = [
    CardItemModel(
      coantity: '7 pcs',
      imagePath: 'assets/images/banana.png',
      price: '4.00',
      title: 'Organic Bananas',
    ),
    CardItemModel(
      coantity: '11 Kg',
      imagePath: 'assets/images/apple.png',
      price: '5.00',
      title: 'Red Apple',
    ),
    CardItemModel(
      coantity: '11 Kg',
      imagePath: 'assets/images/apple.png',
      price: '5.00',
      title: 'Red Apple',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250.h,
      child: ListView.builder(
        itemCount: items.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Exclusive_offer_item(item: items[index]),
          );
        },
      ),
    );
  }
}
