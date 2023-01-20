import 'package:flutter/material.dart';
import 'package:getbig/app/themes.dart';
import 'package:getbig/core/domain/main_navigator.dart';
import 'package:getbig/features/bottom_sheet/view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  static final mainNavigation = MainNavigator();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: Stack(
        children: [
          MaterialApp(
            theme: darkTheme,
            routes: mainNavigation.routes,
            initialRoute: MainNavigatorRouteNames.home,
            onGenerateRoute: mainNavigation.onGenerateRoute,
          ),
          MainBottomSheet.create(),
        ],
      ),
    );
  }
}
