import 'package:flutter/material.dart';

class CategoryGroupWidget extends StatelessWidget {
  const CategoryGroupWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Category Groups',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Container(
                padding: const EdgeInsets.all(6),
                margin: const EdgeInsets.only(left: 8),
                decoration: BoxDecoration(
                    color: Colors.green.withOpacity(.3),
                    borderRadius: BorderRadius.circular(6)),
                child: const Icon(
                  Icons.category,
                  size: 30,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        buildCardItem(),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget buildCardItem() {
    return SizedBox(
      height: 150,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (buildContext, index) {
            return Container(
                height: 100,
                width: 150,
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
                          height: 70,
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
                          backgroundImage:
                              AssetImage('assets/images/Splash.png'),
                        ),
                      ),
                    )
                  ],
                ));
          },
          separatorBuilder: (buildContext, index) => SizedBox(
                width: 10,
              ),
          itemCount: 10),
    );
  }
}
