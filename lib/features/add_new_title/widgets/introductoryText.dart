import 'package:flutter/material.dart';

class IntroductoryText extends StatelessWidget {
  String introductoryText;
  IntroductoryText({super.key,required this.introductoryText});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        introductoryText,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Color(0xFF314158),
        ),
      ),
    );
  }
}
