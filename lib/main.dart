import 'package:flutter/material.dart';
import 'locator.dart';
import './routes/route_paths.dart' as routes;
import './routes/router.dart' as router;
import 'services/service.dart';

void main() {
  setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Michael A. Wanjiru',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: router.generateRoute,
      initialRoute: routes.homeViewRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
    );
  }
}
