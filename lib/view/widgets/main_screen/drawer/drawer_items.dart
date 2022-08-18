import 'package:alhoda/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import '../../../screens/cart_screen.dart';
import 'drawer_item.dart';

class DrawerItems {
  static final home = DrawerItem(
      title: 'Home', icon: Icons.home, onTap: () => Get.to(() => HomeScreen()));
  static final cart = DrawerItem(
      title: 'Cart',
      icon: Icons.shopping_cart,
      onTap: () => Get.to(() => CartScreen()));
  static final favorite =
      DrawerItem(title: 'Favorites', icon: Icons.favorite, onTap: () {});
  static final orders = DrawerItem(
      title: 'Orders', icon: FontAwesomeIcons.circleDollarToSlot, onTap: () {});
  static final wallet =
      DrawerItem(title: 'Wallet', icon: Icons.wallet, onTap: () {});
  static final points = DrawerItem(
      title: 'Points', icon: FontAwesomeIcons.bagShopping, onTap: () {});
  static final settings =
      DrawerItem(title: 'Settings', icon: Icons.settings, onTap: () {});
  static final support = DrawerItem(
      title: 'Support', icon: Icons.perm_contact_cal_outlined, onTap: () {});

  static final List<DrawerItem> all = [
    home,
    cart,
    favorite,
    orders,
    wallet,
    points,
    settings,
    support,
  ];
}
