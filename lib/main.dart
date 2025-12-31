import 'package:build_ui/core/routing/app_router.dart';
import 'package:build_ui/core/routing/routes.dart';
import 'package:build_ui/features/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatelessWidget {
  final AppRouter appRouter;
  MyApp({super.key, required this.appRouter});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeView(),
          onGenerateRoute: appRouter.getAppRoute,
          initialRoute: Routes.homeScreen,
        );
      },
    );
  }
}
