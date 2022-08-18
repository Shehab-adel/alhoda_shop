import 'package:flutter/material.dart';

class ItemsWithTheMostPoints extends StatelessWidget {
  ItemsWithTheMostPoints({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Best Points Products',
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
      ],
    );
  }

  Widget buildCardItem() {
    return SizedBox(
      height: size.height * .3,
      width: double.infinity,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (buildContext, index) {
            return Container(
              height: size.height * .4,
              width: size.width * .5,
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    spreadRadius: 2.0,
                    blurRadius: 1.0,
                  )
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12)),
                        child: Align(
                          alignment: Alignment.center,
                          child: Row(
                            children: const [
                              Text(
                                "نقطة",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "0.0",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        '181.5',
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                          onPressed: () {
                            //controller.manageFavorites(productId);
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Expanded(
                    child: Container(
                      width: size.width * 0.2,
                      height: size.height * 0.1,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage('assets/images/Splash.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(1),
                      child: const Text(
                        'اسم المنتج',
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            InkWell(
                                onTap: () {},
                                child: const Icon(Icons.chevron_right_rounded)),
                            const SizedBox(
                              width: 70,
                            ),
                            const Text('${10} = '),
                            const Text('كرتونة '),
                          ],
                        ),
                        Container(
                          height: 2,
                          width: 150,
                          color: Colors.grey.shade200,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                    margin: const EdgeInsets.only(
                        left: 5, right: 5, top: 16, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(4)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              //cartController.addProductToCart(productModels);
                            },
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 20,
                            )),
                        const Text(
                          'اضافة الي السلة',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ))
                ],
              ),
            );
          },
          separatorBuilder: (buildContext, index) {
            return const SizedBox(
              width: 20,
            );
          },
          itemCount: 10),
    );
  }
}
