import 'package:alhoda/view/widgets/main_screen/drawer/drawer_items.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerWidget extends StatelessWidget {
  DrawerWidget({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(top: size.height * .05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            buildDrawerItems(context),
            notificationsAndRepliesListTile(
                'Notifications', Icons.notifications),
            notificationsAndRepliesListTile('Replies', Icons.quickreply_sharp),
          ],
        ),
      ),
    );
  }

  Widget buildDrawerItems(BuildContext context) {
    return Column(
        children: DrawerItems.all
            .map((item) => ListTile(
          onTap: item.onTap,
                  leading: IconButton(
                    onPressed: item.onTap,
                    icon: Icon(
                      item.icon,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                  title: Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      item.title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ))
            .toList());
  }

  ListTile notificationsAndRepliesListTile(String title, IconData icon) {
    return ListTile(
      leading: Badge(
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
      contentPadding: const EdgeInsets.symmetric(horizontal: 30),
      title: Container(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
