import 'package:flutter/material.dart';
import 'package:task_ui/UI/Widgets/CategoryItem.dart';
import 'package:task_ui/UI/Widgets/HoodieCard.dart';

class HoodiesPageScreen extends StatefulWidget {
  const HoodiesPageScreen({super.key});

  @override
  State<HoodiesPageScreen> createState() => _HoodiesPageScreenState();
}

class _HoodiesPageScreenState extends State<HoodiesPageScreen> {
  final List<Map<String, dynamic>> hoodies = [
    {
      'imageUrl': 'assets/hoodies/hoodie1.jpg',
      'title': 'Men\'s Fleece Pullover Hoodie',
      'price': '\$100.00',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie2.jpg',
      'title': 'Fleece Pullover Skate Hoodie',
      'price': '\$150.97',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie3.jpg',
      'title': 'Fleece Skate Hoodie',
      'price': '\$110.00',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie4.jpg',
      'title': 'Men\'s Ice-Dye Pullover Hoodie',
      'price': '\$128.97',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie1.jpg',
      'title': 'Men\'s Fleece Pullover Hoodie',
      'price': '\$100.00',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie2.jpg',
      'title': 'Fleece Pullover Skate Hoodie',
      'price': '\$150.97',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie3.jpg',
      'title': 'Fleece Skate Hoodie',
      'price': '\$110.00',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie4.jpg',
      'title': 'Men\'s Ice-Dye Pullover Hoodie',
      'price': '\$128.97',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie3.jpg',
      'title': 'Fleece Skate Hoodie',
      'price': '\$110.00',
    },
    {
      'imageUrl': 'assets/hoodies/hoodie4.jpg',
      'title': 'Men\'s Ice-Dye Pullover Hoodie',
      'price': '\$128.97',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.chevron_left),
          style: IconButton.styleFrom(
            backgroundColor: Colors.grey[200],
            shape: CircleBorder(),
          ),
        ),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7,
        ),
        itemCount: hoodies.length,
        itemBuilder: (context, index) {
          return HoodieCard(hoodie: hoodies[index]);
        },
      ),
    );
  }
}
