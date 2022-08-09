import 'package:flutter/material.dart';

class MenuOptionModel {
  final String route;
  final IconData icon;
  final String title;
  final Widget screen;

  MenuOptionModel({
    required this.route,
    required this.title,
    required this.screen,
    required this.icon,
  });
}
