import 'package:flutter/material.dart';

class Featuredproducts extends StatefulWidget {
  @override
  _PromoSectionState createState() => _PromoSectionState();
}

class _PromoSectionState extends State<Featuredproducts> {

  final PageController _controller = PageController();
  int currentPage = 0;

  final products = [
    {"title": "SNEAKERS\nOF THE WEEK", "image": "Assets/Images/aa.png"},
    {"title": "SOMETHING\nELSE", "image": "Assets/Images/aa.png"},
    {"title": "SOMETHING\nELSE", "image": "Assets/Images/aa.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      SizedBox(height: 170,
      child: PageView.builder(
        controller: _controller,
        itemCount: products.length,
        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },
        itemBuilder: (context, index) {
          final item = products[index];
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 50),
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[200],
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(item["title"]!, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18,),),),
                Expanded(
                  child: Image.asset(item["image"]!, fit: BoxFit.contain,),)
              ],
            ),
          );
        },
      ),
    ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            products.length,
                (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: EdgeInsets.symmetric(horizontal: 4),
              height: 6,
              width: currentPage == index ? 20 : 6,
              decoration: BoxDecoration(
                color: currentPage == index ? Colors.blue : Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
/*
class Featuredproducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                "SNEAKERS\nOF THE WEEK",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),

          Expanded(
            child: Image.asset('Assets/Images/aa.png', fit: BoxFit.cover, width: double.infinity,),
          )
        ],
      ),
    );
  }
}*/