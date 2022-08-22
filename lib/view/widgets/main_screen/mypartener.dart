import 'package:flutter/material.dart';

class Myparteners extends StatelessWidget {
  const Myparteners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                ' Partners',
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
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: buildCardItem(),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Seller Products',
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
      ],
    );
  }

  Widget buildCardItem() {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 135,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (buildContext, index) {
              return const SizedBox(
                width: 135,
                height: 135,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/facebook.png'),
                ),
              );
            },
            separatorBuilder: (buildContext, index) => const SizedBox(
                  width: 13,
                ),
            itemCount: 10),
      ),
    );
  }
}
