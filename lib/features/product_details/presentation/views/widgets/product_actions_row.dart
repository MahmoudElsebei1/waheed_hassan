import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ProductActionsRow extends StatelessWidget {
  const ProductActionsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      //custom widget
      children: [
        Expanded(
          child: Container(
            height: 78.49,
            decoration: BoxDecoration(
              color: Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Color(0xFFEAEAEA)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/product_details/high_quality.svg'),
                Gap(4.h),
                Text(
                  'جودة عالية',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF45556C),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(8.h),
        Expanded(
          child: Container(
            height: 78.49,
            decoration: BoxDecoration(
              color: Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Color(0xFFEAEAEA)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/product_details/deliver.svg'),
                Gap(4.h),
                Text(
                  'توصيل 3–7 أيام',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF45556C),
                  ),
                ),
              ],
            ),
          ),
        ),
        Gap(8.h),
        Expanded(
          child: Container(
            height: 78.49,
            decoration: BoxDecoration(
              color: Color(0xFFF8FAFC),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: Color(0xFFEAEAEA)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/product_details/detailed_warranty.svg',
                ),
                Gap(4.h),
                Text(
                  'ضمان التفصيل',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF45556C),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
