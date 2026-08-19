import 'package:flutter/cupertino.dart';

class ItemGridView extends StatelessWidget {
  final String filterByDate;
  Color containerColor=Color(0xFFF6F6F6);
  Color textColor;

   ItemGridView({
    super.key,
    required this.filterByDate,
    required this.containerColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(12),
        color: containerColor,
      ),
      child: Center(
        child: Text(
          filterByDate,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
