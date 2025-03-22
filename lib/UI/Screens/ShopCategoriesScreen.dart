import 'package:flutter/material.dart';
import 'package:task_ui/UI/Widgets/CategoryItem.dart';

class ShopCategoriesScreen extends StatefulWidget {
  const ShopCategoriesScreen({super.key});

  @override
  State<ShopCategoriesScreen> createState() => _ShopCategoriesScreenState();
}

class _ShopCategoriesScreenState extends State<ShopCategoriesScreen> {
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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Shop by Categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            CategoryItem(image: "assets/product/hoodie.jpg", title: "Hoodies"),
            SizedBox(height: 16),
            CategoryItem(
              image: "assets/product/accessories.jpg",
              title: "Accessories",
            ),
            SizedBox(height: 16),
            CategoryItem(image: "assets/product/shorts.jpg", title: "Shorts"),
            SizedBox(height: 16),
            CategoryItem(image: "assets/product/shoes.jpg", title: "Shoes"),
            SizedBox(height: 16),
            CategoryItem(image: "assets/product/bags.jpg", title: "Bags"),
          ],
        ),
      ),
    );
  }
}
