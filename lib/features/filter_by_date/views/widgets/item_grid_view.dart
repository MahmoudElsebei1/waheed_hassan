import 'package:flutter/cupertino.dart';

class ItemGridView extends StatelessWidget {
  final String filterByDate;

  const ItemGridView({super.key, required this.filterByDate});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadiusGeometry.circular(12),
          color: Color(0xFFF6F6F6)),
      child: Center(
        child: Text(
          filterByDate,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color(0xFF334155),
          ),
        ),
      ),
    );
  }
}
