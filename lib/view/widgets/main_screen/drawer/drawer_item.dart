import 'package:flutter/material.dart';

class DrawerItem {
  final Function() onTap;
  final String title;
  final IconData icon;

  DrawerItem({required this.title, required this.icon, required this.onTap});
}
