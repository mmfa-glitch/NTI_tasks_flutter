import 'dart:async';
import 'package:flutter/material.dart';

class Carouselsection extends StatefulWidget{
  @override
  CarouselsectionState createState() => CarouselsectionState();
}

class CarouselsectionState extends State<Carouselsection> {
  late final CarouselController controller;
  int currentPage = 0;
  Timer? timer;

  final List<String> assetImages = [
    'Assets/Images/aa.png',
    'Assets/Images/aa.png',
    'Assets/Images/aa.png',
    'Assets/Images/aa.png',
  ];

  @override
  void dispose() {
    timer?.cancel();
    controller.dispose();
    super.dispose();
  }


  @override
  void initState() {
    super.initState();
    controller = CarouselController(initialItem: 0);

    timer = Timer.periodic(Duration(seconds: 3), (Timer timer) {
      if (currentPage < assetImages.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
      controller.animateToItem(
        currentPage,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: CarouselView.weighted(
        controller: controller,
        flexWeights: const <int>[1, 7, 1],
        itemSnapping: true,
        children: assetImages.map((image) => Image.asset(image, fit: BoxFit.cover)).toList(),
        /*assetImages.map((imagePath) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          );
        }).toList(),*/
      ),
    );
  }
}
