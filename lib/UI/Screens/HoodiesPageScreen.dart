import 'package:flutter/material.dart';
import 'package:task_ui/UI/Utils/hoodies_data.dart';
import 'package:task_ui/UI/Widgets/CategoryItem.dart';
import 'package:task_ui/UI/Widgets/HoodieCard.dart';

class HoodiesPageScreen extends StatefulWidget {
  const HoodiesPageScreen({super.key});

  @override
  State<HoodiesPageScreen> createState() => _HoodiesPageScreenState();
}

class _HoodiesPageScreenState extends State<HoodiesPageScreen> {
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
        itemCount: hoodiesData.length,
        itemBuilder: (context, index) {
          return HoodieCard(hoodie: hoodiesData[index]);
        },
      ),
    );
  }
}
