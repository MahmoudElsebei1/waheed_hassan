import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'الوصف',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF0A0A0A),
            ),
          ),
          Gap(12.h),
          Text(
            'بدلة رجالية كلاسيكية بقصة عصرية أنيقة، مصنوعة من أجود الأقمشة وتُفصّل خصيصاً وفقاً لقياساتك التي تدخلها عبر معالج القياسات. مثالية للمناسبات الرسمية والاجتماعات.',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF45556C),
            ),
          ),
          Gap(12.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(12, 2.71, 12, 4.75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFC9A96115).withOpacity(0.1),
                ),
                child: Text(
                  'خياطة يدوية',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC9A961),
                  ),
                ),
              ),
              Gap(12.w),
              Container(
                padding: EdgeInsets.fromLTRB(12, 2.71, 12, 4.75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFC9A96115).withOpacity(0.1),
                ),
                child: Text(
                  'بطانة حريرية',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC9A961),
                  ),
                ),
              ),
              Gap(12.w),

              Container(
                padding: EdgeInsets.fromLTRB(12, 2.71, 12, 4.75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFC9A96115).withOpacity(0.1),
                ),
                child: Text(
                  'قصة سليم فيت',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC9A961),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
