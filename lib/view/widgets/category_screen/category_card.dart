import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  CategoryCard({Key? key}) : super(key: key);

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Card(
      elevation: 20,
      color: Colors.black,
      child: Container(
          height: size.height * .25,
          width: size.width * .5,
          color: Colors.white,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(8),
                    child: Text('title'),
                  ),
                  Image.asset(
                    'assets/images/th.jpg',
                    height: size.height * .13,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              Positioned(
                left: 35,
                right: 35,
                top: 35,
                bottom: 35,
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.white,
                        width: 4,
                      )),
                  child: const CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/Splash.png'),
                  ),
                ),
              )
            ],
          )),
    );
  }
}
