import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '';
import '../helper/themes.dart';

class promoCard extends StatefulWidget {
  const promoCard({Key? key}) : super(key: key);

  @override
  State<promoCard> createState() => _promoCardState();
}

class _promoCardState extends State<promoCard> {

  int activeIndex = 0;

  final promoImages = [
    'assets/promoCard1.png',
    'assets/promoCard2.png',
    'assets/promoCard3.png',
    'assets/promoCard4.png',
  ];


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 2),
                onPageChanged: (index, reason) =>
                    setState(() => activeIndex = index),
              ),
              itemCount:  promoImages.length,
              itemBuilder: (context, index, realIndex) {
                final promoImage = promoImages[index];

                return buildImage(promoImage, index);
              } ,
            ),
            SizedBox(height: 32,),
            buildIndicator(),
          ],
        )
    );
  }

  Widget buildImage(String promoImage, int index) => Container(
    color: primaryTextColor,
    child: Image.asset(
      promoImage,
      fit: BoxFit.cover,
    ),
  );

  Widget buildIndicator() => AnimatedSmoothIndicator(
    activeIndex: activeIndex,
    count: promoImages.length,
  );

}
