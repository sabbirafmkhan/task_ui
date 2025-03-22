import 'package:flutter/material.dart';
import 'package:task_ui/UI/Widgets/socialLoginButton.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sign in",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                hintText: "Email Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Continue",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),
            RichText(
              text: const TextSpan(
                text: "Don't have an Account? ",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Create One",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            SocialLoginButton(
              text: "Continue With Apple",
              asset: "assets/logo/apple.png",
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SocialLoginButton(
              text: "Continue With Google",
              asset: "assets/logo/facebook.png",
              onPressed: () {},
            ),
            const SizedBox(height: 10),
            SocialLoginButton(
              text: "Continue With Facebook",
              asset: "assets/logo/google.png",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
