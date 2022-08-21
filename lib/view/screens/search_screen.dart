import 'package:alhoda/view/widgets/search_screen/search_text_form.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SearchTextForm(),
                SizedBox(
                  height: size.height * .3,
                ),
                Expanded(
                    child: Image.asset('assets/images/search_empry_light.png'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
