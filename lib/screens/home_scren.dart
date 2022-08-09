import 'package:flutter/material.dart';

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
                leading: const Icon(Icons.access_time_outlined),
                title: const Text('Nombre de la ruta'),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
                onTap: () {
                  //Navigator.push(
                  //context,
                  //MaterialPageRoute(
                  //builder: (context) => const ListView1Screen(),
                  //),
                  //);

                  Navigator.pushNamed(context, 'listview1');
                },
              ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 10),
    );
  }
}
