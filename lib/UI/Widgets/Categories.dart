import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    const categories = ["Hoodies", "Shorts", "Shoes", "Bag", "Accessories"];
    const categoriesImg = [
      'assets/product/hoodie.jpg',
      'assets/product/shorts.jpg',
      'assets/product/shoes.jpg',
      'assets/product/bags.jpg',
      'assets/product/accessories.jpg',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:
            categories.asMap().entries.map((entry) {
              int index = entry.key;
              String category = entry.value;
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[300],
                      foregroundImage: AssetImage(categoriesImg[index]),
                    ),
                    SizedBox(height: 5),
                    Text(category),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
