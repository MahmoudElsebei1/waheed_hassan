import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class RowOfTextAndIcon extends StatelessWidget {
  String textOfRow;
  String iconOfRow;
  RowOfTextAndIcon({super.key,required this.textOfRow,required this.iconOfRow});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          iconOfRow,
          width: 20,
          height: 20,
          color: Color(0xFF314158),
        ),
        Gap(8),
        Text(
          textOfRow,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color(0xFF314158),
          ),
        ),
      ],
    );
  }
}
