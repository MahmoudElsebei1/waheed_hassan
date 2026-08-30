import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class OrderSummaryUpperSection extends StatelessWidget {
  String img;
  OrderSummaryUpperSection({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset('assets/shopping_cart/order_summary.svg'),
        Gap(4),
        Text(
          'ملخص الطلب',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A0A0A),
          ),
        ),
        Spacer(),
        SvgPicture.asset(img),
      ],
    );
  }
}
