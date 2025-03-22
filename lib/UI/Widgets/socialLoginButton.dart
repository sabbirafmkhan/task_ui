import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  final String text;
  final String asset;
  final VoidCallback onPressed;
  const SocialLoginButton({
    super.key,
    required this.text,
    required this.asset,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey[200],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: () {},
        icon: Image.asset(asset, width: 20, height: 20),
        label: Text(text, style: TextStyle(color: Colors.black)),
      ),
    );
    ;
  }
}
