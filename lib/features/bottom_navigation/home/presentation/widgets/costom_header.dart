import 'package:carousel_slider/carousel_slider.dart';
import 'package:cosmetics_app/core/constant/costom_image.dart';
import 'package:cosmetics_app/core/wigdets/app_image.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CostomHeaderCarousel extends StatelessWidget {
  CostomHeaderCarousel({super.key});
  List<String> imagess = [CostomImage.home1, CostomImage.home2];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 270.0),
      items:
          imagess.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: AppImage(url: i, fit: BoxFit.fill),
                );
              },
            );
          }).toList(),
    );
  }
}
