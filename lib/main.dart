import 'package:fl3_components/screens/home_scren.dart';
import 'package:flutter/material.dart';

import 'package:fl3_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const HomeScreen(),
      //initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      //onGenerateRoute: ((settings) => AppRoutes.onGenerateRoute(settings)),
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
