import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class OrderData extends StatelessWidget {
  const OrderData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(17),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xFFF8FAFC),
        border: Border.all(color: Color(0xFFF1F5F9), width: 0.8),
      ),
      child: Column(
        children: [
          Text(
            'رقم الطلب',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Color(0xFF62748E),
            ),
          ),
          Gap(4),
          Text(
            'EQ-815069',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Color(0xFF292D32),
            ),
          ),
          Gap(12),
          DottedLine(
            dashLength: 4,
            dashGapLength: 4,
            lineThickness: 1,
            dashColor: Color(0xFFE2E8F0),
          ),
          Gap(13),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/my_orders_assets/conduction_mode.svg',
                color: Color(0xFFC9A961),
              ),
              Gap(7.45),
              Text(
                'التوصيل المتوقع: ٣–٥ أيام عمل',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF62748E),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
