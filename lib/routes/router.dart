import '../ui/views/home/home_view.dart';
import './route_paths.dart' as routes;
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case routes.homeViewRoute:
      return MaterialPageRoute(builder: (context) => const HomeView());
    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('no path for ${settings.name}'),
          ),
        ),
      );
  }
}
