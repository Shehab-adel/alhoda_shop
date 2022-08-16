import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int currentPage = 0;
  CarouselController carouselController = CarouselController();
  late Size size;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider.builder(
                itemCount: 2,
                carouselController: carouselController,
                itemBuilder: (context, index, realIndex) {
                  return Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Image.asset(
                      'assets/images/Splash.png',
                      fit: BoxFit.cover,
                    ),
                  );
                },
                options: CarouselOptions(
                    height: size.height * .5,
                    autoPlay: true,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    autoPlayInterval: const Duration(seconds: 3),
                    onPageChanged: (index, reson) {
                      currentPage = index;
                      setState(() {});
                    })),
            Container(
              margin: const EdgeInsets.only(left: 5, top: 10),
              child: Row(
                children: [
                  Container(
                    height: size.height * .07,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 27,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * .5,
                  ),
                  Container(
                    height: size.height * .07,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(12)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.category,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * .01,
        ),
        AnimatedSmoothIndicator(
          activeIndex: currentPage,
          count: 3,
          effect: const ExpandingDotsEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: Colors.green,
              dotColor: Colors.white),
        ),
      ],
    );
  }
}
