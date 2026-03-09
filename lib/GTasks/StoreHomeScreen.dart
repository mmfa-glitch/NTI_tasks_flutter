import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/HeaderPart.dart';
import 'package:flutter_review/GTasks/PopularCategories.dart';
import 'package:flutter_review/GTasks/FeaturedProducts.dart';
import 'package:flutter_review/GTasks/PopularProducts.dart';
import 'package:flutter_review/GTasks/SectionTitle.dart';
import 'package:flutter_review/GTasks/EmptyScreen.dart';
import 'package:flutter_review/GTasks/StoreHomeScreen.dart';

class Storehomescreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HeaderPart(),
            PopularCategories(),
            Featuredproducts(),
            Sectiontitle(),
            PopularProducts(),
          ],
        ),
      ),
    );
  }
}