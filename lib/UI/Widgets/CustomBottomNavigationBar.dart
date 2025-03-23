import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: "Alerts",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.comment), label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
      selectedItemColor: Colors.deepPurpleAccent,
      unselectedItemColor: Colors.grey,
    );
  }
}
