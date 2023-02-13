library boxing_images;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class BoxingImages extends StatefulWidget {
  const BoxingImages({Key? key}) : super(key: key);

  @override
  State<BoxingImages> createState() => _BoxingImagesState();
}

class _BoxingImagesState extends State<BoxingImages> {
  List<String> imgUrls = [
    "https://images.unsplash.com/photo-1552072092-7f9b8d63efcb",
    "https://images.unsplash.com/flagged/photo-1574005280900-3ff489fa1f70",
    "https://images.unsplash.com/photo-1591117207239-788bf8de6c3b",
    "https://images.unsplash.com/photo-1606335543042-57c525922933",
    "https://images.unsplash.com/photo-1618517048289-4646902edaf5",
    "https://images.unsplash.com/photo-1525680996651-0222228be6f0",
    "https://images.unsplash.com/photo-1631132329534-0e7e1b94d494",
    "https://images.unsplash.com/photo-1601588462477-e76b16de79f3"
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgUrls.length,
      itemBuilder: (context, index, pageViewIndex) {
        return Image.network(imgUrls.elementAt(index));
      },
      options: CarouselOptions(autoPlay: true),
    ); // Image.network(imgUrls.first);
  }
}
