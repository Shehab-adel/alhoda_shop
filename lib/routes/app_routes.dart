import 'package:alhoda/view/screens/search_screen.dart';
import 'package:get/get.dart';

import '../view/screens/main_screen.dart';

class AppRoutes {
  static const mainScreenRoute = '/welcome';
  static const searchScreenRoute = '/search';

  static final routes = [
    GetPage(
      name: mainScreenRoute,
      page: () => MainScreen(),
    ),
    GetPage(
      name: searchScreenRoute,
      page: () => SearchScreen(),
    ),
  ];
}
