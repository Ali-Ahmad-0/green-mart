import 'package:build_ui/core/constants/constant_colors.dart';
import 'package:build_ui/features/account/views/account_view.dart';
import 'package:build_ui/features/cart/cart_screen.dart';
import 'package:build_ui/features/explore/explore_view.dart';
import 'package:build_ui/features/favorite/favorite_view.dart';
import 'package:build_ui/features/home/views/shop_screen.dart' show ShopScreen;
import 'package:build_ui/core/widgets/custom_bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  
  List<Widget> get  screens => [
    ShopScreen(),
    ExploreView(),
    CartScreen(),
    FavoriteView(),
    AccountView(),
  ];

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
        child: screens[selectedIndex],
      ),
    );
  }
}
