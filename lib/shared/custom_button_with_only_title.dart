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
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        textButton,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: colorOfTextBtn,
        ),
      ),
      style: ElevatedButton.styleFrom(
        overlayColor: Colors.transparent,
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(fontSize),
        ),
        minimumSize: Size(double.infinity, 56),
      ),
    );
  }
}
