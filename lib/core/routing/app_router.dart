import 'package:build_ui/core/routing/routes.dart';
import 'package:build_ui/features/account/views/account_view.dart';
import 'package:build_ui/features/explore/explore_view.dart';
import 'package:build_ui/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route getAppRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeView());
      case Routes.exploreScreen:
        return MaterialPageRoute(builder: (_) => ExploreView());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => AccountView());
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => HomeView());
      // case Routes.homeScreen:
      //   return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
