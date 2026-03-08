import 'package:flutter/material.dart';
import 'package:flutter_review/GTasks/HeaderPart.dart';
import 'package:flutter_review/GTasks/PopularCategories.dart';
import 'package:flutter_review/GTasks/FeaturedProducts.dart';
import 'package:flutter_review/GTasks/PopularProducts.dart';
import 'package:flutter_review/GTasks/SectionTitle.dart';

class StoreHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.indigo[900],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[700],
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Store"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: SafeArea(
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
      ),
    );
  }
}