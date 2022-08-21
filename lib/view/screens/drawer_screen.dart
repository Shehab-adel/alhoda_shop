import 'package:alhoda/view/widgets/main_screen/drawer/drawer_widget.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  DrawerScreen({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          children: [DrawerWidget()],
        ),
      ),
    );
  }
}
