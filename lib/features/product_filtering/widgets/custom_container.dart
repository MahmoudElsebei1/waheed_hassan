import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String textOfContainer;
  bool isSelected;

  CustomContainer({
    super.key,
    required this.textOfContainer,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.black : Color(0xFFF6F6F6),
        borderRadius: BorderRadius.circular(16),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        textOfContainer,
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
