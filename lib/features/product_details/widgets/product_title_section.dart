import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/product_details/widgets/product_actions_row.dart';

class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.99),

      decoration: BoxDecoration(color: Colors.white),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Gap(15.72.h),
            Text(
              'بدلة كلاسيكية',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Color(0xFFC9A961),
              ),
            ),
            Gap(6.29.h),
            Text(
              'بدلة رجالية رصاصي فاخرة',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xFF0F172B),
              ),
            ),
            Gap(7.27.w),
            Row(
              children: [
                Text(
                  '(124 تقييم)',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF62748E),
                  ),
                ),
                Gap(7.99.w),
                Text(
                  '4.8',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                Gap(4.w),
                SvgPicture.asset('assets/shared/rate.svg'),
              ],
            ),
            Gap(15.99.h),
            ProductActionsRow(),
            Gap(80.h),
          ],
        ),
      ),
    );
  }
}
