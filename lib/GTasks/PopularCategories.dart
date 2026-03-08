import 'package:flutter/material.dart';

class PopularCategories extends StatelessWidget {

  final List<Map<String, Object>> categoryMapping = [
    {'name': "Jewellery", 'icon': Icons.diamond},
    {'name': "Sports", 'icon': Icons.sports_baseball},
    {'name': "Electronics", 'icon': Icons.phone_android},
    {'name': "Furniture", 'icon': Icons.chair},
    {'name': "Clothes", 'icon': Icons.shopping_bag},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: 90,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryMapping.length,
        itemBuilder: (context, index) {
          final item = categoryMapping[index];
          return Container(
            width: 70,
            margin: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.grey[200],
                  child: Icon(item['icon'] as IconData?),
                ),
                const SizedBox(height: 6),
                Text(
                  //"Category",
                  item['name'] as String,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}