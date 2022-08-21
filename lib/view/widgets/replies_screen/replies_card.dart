import 'package:flutter/material.dart';

class RepliesCard extends StatelessWidget {
  RepliesCard({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: size.height * .27,
        child: Card(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Date:',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2022-8-11',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Row(
                  children: const [
                    Text(
                      'Type:',
                    ),
                    Text(
                      'للتواصل مع خدمة العملاء',
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      Text(
                        'Notes:',
                      ),
                      Text(
                        'لو سمحت انا هوزع جملة الاسعار ثابتة ولا؟',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Container(
                  width: size.width * .9,
                  height: size.height * .001,
                  color: Colors.orange,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('Reply:'),
                      Text(
                        'حضرتك بترجع لقسم المبيعات من خلال الاتصال علي 15092 وتغغط علي رقم 1',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
