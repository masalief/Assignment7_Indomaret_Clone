import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Color.fromARGB(255, 255, 219, 101),
      indicatorBackgroundColor: Color.fromARGB(255, 210, 11, 11),
      height: 350,
      autoPlayInterval: 3500,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/KawaManis.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/KawaAsam.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/AnggurManis.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/SojuManis.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/KawaManis.png"),
        ),
      ],
    );
  }
}

// images slide dalam card item