import 'package:alhoda/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoriteCardItem extends StatefulWidget {
  FavoriteCardItem({Key? key}) : super(key: key);

  @override
  State<FavoriteCardItem> createState() => _FavoriteCardItemState();
}

class _FavoriteCardItemState extends State<FavoriteCardItem> {
  String selectedText = 'كرتونة = 10 علبة';

  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Padding(
        padding: const EdgeInsets.all(3.0),
        child: Card(
          elevation: 13,
          child: Row(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoutes.similarCardItemsScreenRoute);
                    },
                    child: const Text(
                      '...',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                  Container(
                    width: size.width * 0.12,
                    height: size.height * 0.11,
                    margin: EdgeInsets.only(
                        left: size.width * .02, bottom: 12, top: 20),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('assets/images/Splash.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'title',
                      style: TextStyle(),
                    ),
                    SizedBox(
                      width: size.width * 0.5,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(selectedText,
                              style: TextStyle(
                                  color: Colors.orangeAccent,
                                  fontWeight: FontWeight.w600)),
                          dropDownBottomContainer()
                        ],
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(right: 15, bottom: 5, top: 5),
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(12)),
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
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.all(8),
                    margin: EdgeInsets.only(top: 5, left: 20),
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
                  Container(
                    margin: EdgeInsets.only(
                      bottom: size.height * .01,
                    ),
                    padding: EdgeInsets.all(3.0),
                    child: Row(
                      children: const [
                        Text(
                          "${265.0} ",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "${263.8} ",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          overflow: TextOverflow.ellipsis,
                          "LE",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }

  Widget dropDownBottomContainer() {
    return PopupMenuButton(
        icon: const Icon(Icons.arrow_drop_down),
        itemBuilder: (context) {
          return const [
            PopupMenuItem<int>(
                value: 0,
                child: Text(
                  'كرتونة = 10 علبة',
                )),
            PopupMenuItem<int>(value: 1, child: Text('علبة')),
          ];
        },
        onSelected: (value) {
          if (value == 0) {
            selectedText = 'كرتونة = 10 علبة';
          } else if (value == 1) {
            selectedText = 'علبة';
          }
          setState(() {});
        });
  }
}
