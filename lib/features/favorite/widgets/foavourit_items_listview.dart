import 'package:build_ui/features/favorite/item_model.dart';
import 'package:build_ui/features/favorite/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class FoavouritItemsListview extends StatelessWidget {
  FoavouritItemsListview({super.key});
  List<FavoriteModel> faveItem = [
    FavoriteModel(
      image: 'assets/images/drink.png',
      price: '1.50',
      subTitle: '325ml',
      title: 'Sprite Can',
    ),
    FavoriteModel(
      image: 'assets/images/deitcoc.png',
      price: '1.99',
      subTitle: '325ml',
      title: 'Diet Coke',
    ),
    FavoriteModel(
      image: 'assets/images/juice.png',
      price: '15.50',
      subTitle: '2L',
      title: 'Apple & Grape Juice',
    ),
    FavoriteModel(
      image: 'assets/images/coca.png',
      price: '4.99',
      subTitle: '325ml',
      title: 'Coca cola Can',
    ),
    FavoriteModel(
      image: 'assets/images/pepsi.png',
      price: '1.50',
      subTitle: '325ml',
      title: 'Pepsi Can',
    ),
    
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: faveItem.length,
      itemBuilder: (context, index) {
        return FavouriteItem(itemModel: faveItem[index]);
      },
    );
  }
}
