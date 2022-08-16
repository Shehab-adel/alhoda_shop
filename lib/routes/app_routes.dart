import 'package:get/get.dart';

import '../view/screens/main_screen.dart';

class AppRoutes {
  static const mainScreenRoute = '/welcome';

  static final routes = [
    GetPage(
      name: mainScreenRoute,
      page: () => MainScreen(),
    ),
  ];
}
