import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class PriceAndQuantitySection extends StatelessWidget {
  const PriceAndQuantitySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24))
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(24),
              border: Border.all(color: Color(0xFFEAEAEA)),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.remove, color: Colors.black),
                ),
                Gap(11.79),
                Text(
                  '1',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                Gap(11.79),

                CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'إجمالي السعر',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF62748E),
                ),
              ),
              Gap(0.77.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '2,200 ج',
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF90A1B9),
                    ),
                  ),
                  Gap(8.99.w),
                  Text(
                    '1,800 ج',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
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
