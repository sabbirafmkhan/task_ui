import 'package:flutter/material.dart';

class HoodieCard extends StatelessWidget {
  final Map<String, dynamic> hoodie;
  const HoodieCard({super.key, required this.hoodie});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  hoodie['imageUrl'],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: Icon(Icons.favorite_border),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hoodie['title'],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(hoodie['price']),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
