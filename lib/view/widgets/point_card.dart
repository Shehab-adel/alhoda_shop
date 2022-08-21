import 'dart:ui';

import 'package:flutter/material.dart';

class PointCard extends StatelessWidget {
  PointCard({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.866,
      width: size.width,
      child: Card(
        elevation: 10,
        child: Column(
          children: [
            Text(
              'Welcome To Points Program',
              style: TextStyle(
                  fontSize: 20,
                  height: 3,
                  color: Colors.orange,
                  fontWeight: FontWeight.w500),
            ),
            const Text(
              'Dear Customer :',
              style: TextStyle(
                fontSize: 13,
                height: 2,
              ),
            ),
            SizedBox(
              height: size.height * .001,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(children: [
                Text(
                  'You have : ',
                  style:
                      TextStyle(fontSize: 13, height: 2, color: Colors.black),
                ),
                Container(
                  color: Colors.green,
                  height: size.height * 0.08,
                  width: size.width * 0.08,
                  padding: EdgeInsets.only(top: 22, left: 10),
                  child: Text(
                    '0',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'points',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                ),
              ]),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              height: 1,
              width: size.width * .8,
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(9.0).copyWith(right: 40),
              child: Text(
                "We appreciate you. So, we have designed our"
                " points program to achieve the best benifit "
                "without any extra fees,you can collect points and then replace them with actual gifts.",
                style: TextStyle(
                    wordSpacing: 3,
                    letterSpacing: .5,
                    fontSize: 13,
                    height: 1.7),
              ),
            ),
            SizedBox(
              height: size.height * .01,
            ),
            Container(
              height: 1,
              width: size.width * .8,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
