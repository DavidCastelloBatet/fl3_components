import 'package:flutter/material.dart';

import 'package:fl3_components/models/models.dart';
import 'package:fl3_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptionModel>[
    //MenuOptionModel(
    //route: 'home',
    //title: 'Home Screen',
    //screen: const HomeScreen(),
    //icon: Icons.home),
    MenuOptionModel(
        route: 'listview1',
        title: 'List View tipo 1',
        screen: const ListView1Screen(),
        icon: Icons.list_alt),
    MenuOptionModel(
        route: 'listview2',
        title: 'List View tipo 2',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOptionModel(
        route: 'alert',
        title: 'Alertas',
        screen: const AlertScreen(),
        icon: Icons.add_alert_outlined),
    MenuOptionModel(
        route: 'card',
        title: 'Cards',
        screen: const CardScreen(),
        icon: Icons.credit_card)
  ];

//  static Map<String, Widget Function(BuildContext)> routes = {
//    'home': (BuildContext context) => const HomeScreen(),
//    'alert': (BuildContext context) => const AlertScreen(),
//    'card': (BuildContext context) => const CardScreen(),
//    'listview1': (BuildContext context) => const ListView1Screen(),
//    'listview2': (BuildContext context) => const ListView2Screen(),
//  };

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (var option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<MaterialPageRoute> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const NoScreen(),
    );
  }
}
