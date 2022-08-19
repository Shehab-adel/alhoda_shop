import 'package:alhoda/view/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/main_controller.dart';
import '../../routes/app_routes.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key? key}) : super(key: key);

  final mainController = Get.find<MainController>();
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return SafeArea(
      child: Obx(() {
        return Scaffold(
          appBar: mainController.currentIndex.value != 0
              ? buildAppBar(
                  context: context,
                  onPressedSearch: () {
                    Get.toNamed(AppRoutes.searchScreenRoute);
                  },
                  onPressedIcon: () {
                    mainController.currentIndex.value = 0;
                  },
                  title:
                      mainController.title[mainController.currentIndex.value])
              : null,
          drawer:
              mainController.currentIndex.value != 0 ? const Drawer() : null,
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: const Icon(Icons.line_style),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.antiAlias,
            shape: const CircularNotchedRectangle(),
            notchMargin: 8,
            child: BottomNavigationBar(
              onTap: (index) {
                mainController.currentIndex.value = index;
              },
              backgroundColor: Colors.white,
              currentIndex: mainController.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items: const [
                BottomNavigationBarItem(
                  activeIcon: Icon(
                    Icons.home,
                    color: Colors.green,
                  ),
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.category,
                      color: Colors.green,
                    ),
                    icon: Icon(
                      Icons.category,
                      color: Colors.black,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.favorite,
                      color: Colors.green,
                    ),
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.black,
                    ),
                    label: ''),
                BottomNavigationBarItem(
                    activeIcon: Icon(
                      Icons.settings,
                      color: Colors.green,
                    ),
                    icon: Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    label: ''),
              ],
            ),
          ),
          body: IndexedStack(
            index: mainController.currentIndex.value,
            children: mainController.item,
          ),
        );
      }),
    );
  }
}
