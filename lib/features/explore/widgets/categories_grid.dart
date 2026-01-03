import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/features/explore/item_model.dart';
import 'package:build_ui/features/explore/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesGrid extends StatelessWidget {
  CategoriesGrid({super.key});
  final List<ItemModel> items = [
    ItemModel(
      image: 'assets/images/vegitables.png',
      title: 'Fresh Fruits & Vegetable',
      color: AppColors.primaryColorGreen,
    ),
    ItemModel(
      image: 'assets/images/oil.png',
      title: 'Cooking Oil & Ghee',
      color: const Color(0xfff8a44c),
    ),
    ItemModel(
      image: 'assets/images/meat.png',
      title: 'Meat & Fish',
      color: const Color(0xffF7A593),
    ),
    ItemModel(
      image: 'assets/images/bakery.png',
      title: 'Bakery & Snacks',
      color: const Color(0xffD3B0E0),
    ),
    ItemModel(
      image: 'assets/images/eggs.png',
      title: 'Dairy & Eggs',
      color: const Color(0xffFDE598),
    ),
    ItemModel(
      image: 'assets/images/beverages.png',
      title: 'Beverages',
      color: const Color(0xffB7DFF5),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 175 / 190,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CategoryItem(item: items[index]);
      },
    );
  }
}
