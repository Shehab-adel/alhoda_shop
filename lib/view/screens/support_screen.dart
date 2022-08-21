import 'package:alhoda/view/widgets/support_screen/complaint_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../shared/app_bar.dart';
import '../widgets/main_screen/drawer/drawer_widget.dart';

class SupportScreen extends StatelessWidget {
  SupportScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      appBar: buildAppBar(
          context: context,
          onPressedIcon: () {
            Get.back();
          },
          title: 'Communication & Support',
          sizeMediaQueryWidth: .01),
      drawer: Drawer(
        backgroundColor: Colors.green,
        child: DrawerWidget(),
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.phone_iphone,
                      color: Colors.orange,
                    ),
                    Text(
                      'Call Customer Support:',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20.0,
                      ),
                      child: Text(
                        '15092',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange),
                      ),
                    )
                  ],
                ),
              ),
              ComplaintAndSuggestionCardWidget(
                text: 'Complaint',
              ),
              SizedBox(
                height: size.height * 0.04,
              ),
              ComplaintAndSuggestionCardWidget(
                text: 'Suggestion',
              )
            ],
          ),
        ),
      ),
    ));
  }
}
