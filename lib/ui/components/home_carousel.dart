import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> images = [
  'assets/images/img_home_1.png',
  'assets/images/img_home_2.png',
  'assets/images/img_home_3.png',
  'assets/images/img_home_4.png',
];

class HomeCarousel extends StatefulWidget {
  const HomeCarousel({super.key});

  @override
  State<HomeCarousel> createState() => _HomeCarouselState();
}

class _HomeCarouselState extends State<HomeCarousel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: images.length,
          itemBuilder: (_, index, _) {
            final item = images[index];
            return Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: .circular(16),
                image: DecorationImage(image: AssetImage(item), fit: .cover),
              ),
            );
          },
          options: CarouselOptions(
            aspectRatio: 21 / 9,
            height: 139,
            enlargeCenterPage: true,
            viewportFraction: .85,
            autoPlay: true,
          ),
        ),
      ],
    );
  }
}
