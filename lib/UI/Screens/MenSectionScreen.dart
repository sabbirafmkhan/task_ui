import 'package:flutter/material.dart';
import 'package:task_ui/UI/Utils/hoodies_data.dart';
import 'package:task_ui/UI/Widgets/Categories.dart';
import 'package:task_ui/UI/Widgets/CustomBottomNavigationBar.dart';
import 'package:task_ui/UI/Widgets/HoodieCard.dart';
import 'package:task_ui/UI/Widgets/ProductCard.dart';
import 'package:task_ui/UI/Widgets/SearchField.dart';

class MenSectionScreen extends StatefulWidget {
  const MenSectionScreen({super.key});

  @override
  State<MenSectionScreen> createState() => _MenSectionScreenState();
}

class _MenSectionScreenState extends State<MenSectionScreen> {
  String selectedCategory = "Men";
  final List<String> categories = ["Men", "Women", "Kids"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: DropdownButton<String>(
          value: selectedCategory,
          icon: Icon(Icons.keyboard_arrow_down_sharp, color: Colors.black),
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          underline: Container(),
          onChanged: (String? newValue) {
            setState(() {
              selectedCategory = newValue!;
            });
          },
          items:
              categories.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
        ),
        centerTitle: true,
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/product/hoodie.jpg'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopify, color: Colors.deepPurpleAccent, size: 50),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SearchField(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 16),
            Categories(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Selling",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie1.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie2.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie3.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie4.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New In",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepPurpleAccent,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie1.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/product/shoes.jpg', // Replace with your image URL
                    title: "Men's Shoes",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/product/bags.jpg', // Replace with your image URL
                    title: "School bags",
                    price: '\$148.00',
                  ),
                  ProductCard(
                    imageUrl:
                        'assets/hoodies/hoodie4.jpg', // Replace with your image URL
                    title: "Men's Harrington Jacket",
                    price: '\$148.00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
