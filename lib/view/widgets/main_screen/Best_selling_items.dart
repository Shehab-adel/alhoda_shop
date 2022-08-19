import 'package:flutter/material.dart';

class BestSellingItems extends StatelessWidget {
  BestSellingItems({Key? key}) : super(key: key);
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return buildCardItem();
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
                      IconButton(
                          onPressed: () {
                            //controller.manageFavorites(productId);
                          },
                          icon: const Icon(
                            Icons.favorite,
                            color: Colors.grey,
                          )),
                      const Text(
                        '181.5',
                        style: TextStyle(fontSize: 16),
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "0.0",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 2,
                            ),
                            Text(
                              "points",
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
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
                        const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text(
                            'Add To Cart',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              //cartController.addProductToCart(productModels);
                            },
                            icon: const Icon(
                              Icons.shopping_cart,
                              color: Colors.white,
                              size: 20,
                            )),
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
