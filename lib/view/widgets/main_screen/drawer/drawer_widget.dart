import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../../routes/app_routes.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: size.height * .07),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            drawerItem(
                title: 'Home',
                icon: Icons.home,
                onTap: () {
                  Get.offNamed(AppRoutes.mainScreenRoute);
                  Get.back();
                }),
            drawerItem(
                title: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  Get.toNamed(AppRoutes.cartScreenRoute);
                }),
            drawerItem(
                title: 'Orders',
                icon: FontAwesomeIcons.circleDollarToSlot,
                onTap: () {
                  Get.toNamed(AppRoutes.ordersScreenRoute);
                }),
            drawerItem(
                title: 'Wallet',
                icon: Icons.wallet,
                onTap: () {
                  Get.toNamed(AppRoutes.walletScreenRoute);
                }),
            drawerItem(
                title: 'Points',
                icon: FontAwesomeIcons.bagShopping,
                onTap: () {
                  Get.toNamed(AppRoutes.pointScreenRoute);
                }),
            drawerItem(
                title: 'Support',
                icon: Icons.perm_contact_cal_outlined,
                onTap: () {
                  Get.toNamed(AppRoutes.supportScreenRoute);
                }),
            notificationsAndRepliesListTile(
                'Notifications', Icons.notifications),
            notificationsAndRepliesListTile('Replies', Icons.quickreply_sharp),
          ],
        ),
      ),
    );
  }

  Widget drawerItem(
      {required String title,
      required IconData icon,
      required Function() onTap}) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            IconButton(
              onPressed: onTap,
              icon: Icon(
                icon,
                color: Colors.white,
                size: 20,
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  Widget notificationsAndRepliesListTile(String title, IconData icon) {
    return InkWell(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Row(
          children: [
            Badge(
              padding: const EdgeInsets.all(5),
              position: BadgePosition.topEnd(top: 1, end: 25),
              animationDuration: const Duration(milliseconds: 300),
              animationType: BadgeAnimationType.slide,
              badgeContent: const Text(
                '${0}',
                style: TextStyle(color: Colors.white),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    icon,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}