import 'package:flutter/material.dart';

import '../list_screen/list_screen.dart';

class Routes {
  static const String listScreen = '/';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.listScreen:
        return MaterialPageRoute(builder: (_) => const ListScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Route not found'),
        ),
        body: const Center(child: Text('Route not found')),
      ),
    );
  }
}
