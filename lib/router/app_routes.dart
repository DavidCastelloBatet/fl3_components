import 'package:flutter/material.dart';

import 'package:fl3_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static Map<String, Widget Function(BuildContext)> routes = {
    'home': (BuildContext context) => const HomeScreen(),
    'alert': (BuildContext context) => const AlertScreen(),
    'card': (BuildContext context) => const CardScreen(),
    'listview1': (BuildContext context) => const ListView1Screen(),
    'listview2': (BuildContext context) => const ListView2Screen(),
  };

  static Route<MaterialPageRoute> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const NoScreen(),
    );
  }
}
