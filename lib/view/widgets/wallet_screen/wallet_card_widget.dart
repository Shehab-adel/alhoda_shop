import 'package:flutter/material.dart';

class WalletCardWidget extends StatelessWidget {
  WalletCardWidget({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.1,
      child: Card(
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Text('Credit:'),
              SizedBox(
                width: size.width * 0.05,
              ),
              Container(
                color: Colors.orangeAccent,
                height: size.height * 0.06,
                width: size.width * 0.13,
                alignment: Alignment.center,
                child: const Text(
                  '0.0',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                width: size.width * 0.04,
              ),
              const Text(
                'LE',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
