import 'package:flutter/material.dart';

class Myparteners extends StatelessWidget {
  const Myparteners({Key? key}) : super(key: key);

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
        const SizedBox(
          height: 12,
        ),
        buildCardItem(),
        const SizedBox(
          height: 12,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }

  Widget buildCardItem() {
    return SizedBox(
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
                width: 15,
              ),
          itemCount: 10),
    );
  }
}
