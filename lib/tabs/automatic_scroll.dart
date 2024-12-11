import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AutomaticScroll extends StatefulWidget {
  const AutomaticScroll({super.key});

  @override
  State<AutomaticScroll> createState() => _AutomaticScrollState();
}

class _AutomaticScrollState extends State<AutomaticScroll> {
  final List<String> imageList = [
    "assets/img/images/cardV.jpg",
    "assets/img/images/cardI.jpg",
    "assets/img/images/cardII.jpg",
    "assets/img/images/cardIII.jpg",
    "assets/img/images/cardIV.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: Colors.amber,
      child: CarouselSlider(
          // /path has all images thats is to be displayed
          items: imageList.map((allImage) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(allImage), fit: BoxFit.cover)),
            );
          }).toList(),
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            viewportFraction: 1.0,
          )),
    );
  }
}
