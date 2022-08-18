import 'package:get/get.dart';

import '../view/screens/category_screen.dart';
import '../view/screens/favorite_screen.dart';
import '../view/screens/home_screen.dart';
import '../view/screens/settings_screen.dart';

class MainController extends GetxController {
  RxInt currentIndex = 0.obs;

  final item =
      [HomeScreen(), CategoryScreen(), FavoriteScreen(), SettingScreen()].obs;

  final title = ['home', 'Category', 'Favorite', 'Settings'].obs;
}
