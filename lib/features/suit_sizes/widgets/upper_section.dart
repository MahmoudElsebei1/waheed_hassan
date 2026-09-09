import 'package:flutter/material.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 124,
      padding: EdgeInsets.symmetric(horizontal: 26, vertical: 24),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            backgroundColor: Color(0xFF314158),
            child: Text(
              '١',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Container(height: 2, width: 42, color: Color(0xFFE2E8F0)),

          CircleAvatar(
            backgroundColor: Color(0xFF314158),
            child: Text(
              '٢',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Container(height: 2, width: 42, color: Color(0xFFE2E8F0)),

          CircleAvatar(
            backgroundColor: Color(0xFF314158),
            child: Text(
              '٣',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Container(height: 2, width: 42, color: Color(0xFFE2E8F0)),

          CircleAvatar(
            backgroundColor: Color(0xFF314158),
            child: Text(
              '٤',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
