import 'package:flutter/material.dart';

class EmptyNotifications extends StatelessWidget {
  EmptyNotifications({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * .16),
      child: Column(
        children: [
          const Icon(
            Icons.notifications,
            size: 100,
            color: Colors.orangeAccent,
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: RichText(
                text: const TextSpan(children: [
              TextSpan(
                  text: 'No Notifications yet',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange)),
            ])),
          ),
        ],
      ),
    );
  }
}
