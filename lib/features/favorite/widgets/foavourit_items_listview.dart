import 'package:build_ui/features/favorite/widgets/favourite_item.dart';
import 'package:flutter/material.dart';

class FoavouritItemsListview extends StatelessWidget {
  const FoavouritItemsListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        return const FavouriteItem();
      },
    );
  }
}
