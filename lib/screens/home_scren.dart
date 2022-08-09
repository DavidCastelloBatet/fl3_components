import 'package:flutter/material.dart';

import 'package:fl3_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter 3'),
        elevation: 0,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                leading: Icon(AppRoutes.menuOptions[index].icon),
                title: Text(AppRoutes.menuOptions[index].title),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  //Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) => const ListView1Screen(),
                  //),
                  //);

                  Navigator.pushNamed(
                      context, AppRoutes.menuOptions[index].route);
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: AppRoutes.menuOptions.length),
    );
  }
}
