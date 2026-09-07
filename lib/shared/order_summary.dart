import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/shared/order_summary_upper_section.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Color(0xFFEAEAEA)),
      ),
      child: Column(
        children: [
          OrderSummaryUpperSection(img: 'assets/shopping_cart/arrow_down.svg',),
          Gap(15.99),
          Row(
            children: [
              Text(
                'المجموع الفرعي',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
              Spacer(),
              Text(
                '٦٬٦٠٠ ج.م',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Gap(11.99),
          Row(
            children: [
              Text(
                'التوصيل',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
              Spacer(),
              Text(
                '٦٠ ج.م',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Gap(11.99),
          Row(
            children: [
              Text(
                'الخصم',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
              Spacer(),
              Text(
                '—',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
            ],
          ),
          Gap(11.99),
          Divider(color: Colors.black.withValues(alpha: 0.05)),
          Gap(11.99),
          Row(
            children: [
              Text(
                'الإجمالي',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withValues(alpha: 0.6),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Text(
                    '٦٬٦٦٠',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  Gap(3.w),

                  Text(
                    'ج.م',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Colors.black.withValues(alpha: 0.5),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
