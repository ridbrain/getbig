import 'package:flutter/material.dart';
import 'package:getbig/core/domain/assembler_builder.dart';

abstract class MainNavigatorRouteNames {
  static const home = '/home';
  static const settings = '/home/settings';
  static const auth = '/home/settings/auth';
}

class MainNavigator {
  static final _assmblerBuilder = AssemblerBuilder();

  final routes = <String, Widget Function(BuildContext)>{
    MainNavigatorRouteNames.home: (_) => _assmblerBuilder.homeScreen(),
  };

  Route<Object> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case MainNavigatorRouteNames.settings:
        return openSettings(settings.arguments);
      case MainNavigatorRouteNames.auth:
        return openAuth(settings.arguments);
      default:
        const widget = Text('Ups... Navigation error :(');
        return MaterialPageRoute(builder: (_) => widget);
    }
  }

  Route<Object> openSettings(Object? arguments) {
    return MaterialPageRoute(
      builder: (_) => _assmblerBuilder.settingsScreen(),
    );
  }

  Route<Object> openAuth(Object? arguments) {
    return MaterialPageRoute(
      builder: (_) => _assmblerBuilder.settingsScreen(),
    );
  }
}
