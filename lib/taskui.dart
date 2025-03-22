import 'package:flutter/material.dart';
import 'package:task_ui/UI/Screens/CreateAccountScreen.dart';
import 'package:task_ui/UI/Screens/HoodiesPageScreen.dart';
import 'package:task_ui/UI/Screens/ShopCategoriesScreen.dart';
import 'package:task_ui/UI/Screens/SignInScreen.dart';
import 'package:task_ui/UI/Screens/TellUsAboutScreen.dart';

class TaskUi extends StatelessWidget {
  const TaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HoodiesPageScreen(),
    );
  }
}
