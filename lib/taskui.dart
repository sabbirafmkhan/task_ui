import 'package:flutter/material.dart';
import 'package:task_ui/UI/Screens/SignInScreen.dart';

class TaskUi extends StatelessWidget {
  const TaskUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignInScreen());
  }
}
