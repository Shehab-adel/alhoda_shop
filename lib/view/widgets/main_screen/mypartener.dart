import 'package:flutter/material.dart';

class Myparteners extends StatelessWidget {
  const Myparteners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.category,
                  size: 30,
                  color: Colors.green,
                )),
            const Text(
              ' شركئنا',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        buildCardItem(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.category,
                  size: 30,
                  color: Colors.green,
                )),
            const Text(
              'الاصناف الاكثر مبيعا',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            )
          ],
        ),
        const SizedBox(
          height: 5,
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
