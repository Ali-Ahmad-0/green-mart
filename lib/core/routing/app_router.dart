import 'package:build_ui/core/routing/routes.dart';
import 'package:build_ui/features/home/views/home_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route getAppRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
