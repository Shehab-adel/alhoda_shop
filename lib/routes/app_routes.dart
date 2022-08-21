import 'package:alhoda/bindings/order_bindings.dart';
import 'package:alhoda/view/screens/cart_screen.dart';
import 'package:alhoda/view/screens/drawer_screen.dart';
import 'package:alhoda/view/screens/orders_screen.dart';
import 'package:alhoda/view/screens/point_screen.dart';
import 'package:alhoda/view/screens/search_screen.dart';
import 'package:alhoda/view/screens/similar_item.dart';
import 'package:alhoda/view/screens/wallet_screen.dart';
import 'package:get/get.dart';

import '../bindings/main_bindings.dart';
import '../view/screens/main_screen.dart';

class AppRoutes {
  static const mainScreenRoute = '/main_screen';
  static const searchScreenRoute = '/search';
  static const drawerScreenRoute = '/drawer';
  static const cartScreenRoute = '/cart';
  static const similarCardItemsScreenRoute = '/similar_card';
  static const ordersScreenRoute = '/orders';
  static const walletScreenRoute = '/wallet';
  static const pointScreenRoute = '/point_screen';

  static final routes = [
    GetPage(
      name: mainScreenRoute,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: searchScreenRoute,
      page: () => SearchScreen(),
    ),
    GetPage(
      name: cartScreenRoute,
      page: () => CartScreen(),
    ),
    GetPage(
      name: drawerScreenRoute,
      page: () => DrawerScreen(),
    ),
    GetPage(
      name: similarCardItemsScreenRoute,
      page: () => SimilarCardItems(),
    ),
    GetPage(
        name: ordersScreenRoute,
        page: () => OrderScreen(),
        binding: OrderBinding()),
    GetPage(
      name: walletScreenRoute,
      page: () => WalletScreen(),
    ),
    GetPage(
      name: pointScreenRoute,
      page: () => PointsScreen(),
    ),
  ];
}
