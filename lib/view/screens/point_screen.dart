import 'package:alhoda/view/widgets/wallet_screen/wallet_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/app_bar.dart';
import '../widgets/main_screen/drawer/drawer_widget.dart';
import '../widgets/wallet_screen/card_transaction_widget.dart';

class PointsScreen extends StatelessWidget {
  PointsScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      appBar: buildAppBar(
          context: context,
          onPressedIcon: () {
            Get.back();
          },
          title: 'Wallet'),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: DrawerWidget(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            WalletCardWidget(),
            SizedBox(
              height: size.height * 0.04,
            ),
            CardTransactionWidget(),
          ],
        ),
      ),
    ));
  }
}
