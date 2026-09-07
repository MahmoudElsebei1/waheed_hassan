import 'package:flutter/material.dart';

class CustomButtonWithOnlyTitle extends StatelessWidget {
  final String textButton;
  final Color btnColor;
  final Color colorOfTextBtn;
  final double fontSize;

  const CustomButtonWithOnlyTitle({
    super.key,
    required this.textButton,
    required this.btnColor,
    required this.colorOfTextBtn,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(fontSize),
        color: btnColor,
      ),
      width: double.infinity,
      height: 56,
      child: Center(
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: colorOfTextBtn,
          ),
        ),
      ),
    );
  }
}
