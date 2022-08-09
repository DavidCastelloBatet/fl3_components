import 'package:flutter/material.dart';

class NoScreen extends StatelessWidget {
  const NoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter 3'),
      ),
      body: const Center(
        child: Text(
          'La Pàgina no Existeix',
          style: TextStyle(color: Colors.red, fontSize: 20),
        ),
      ),
    );
  }
}
