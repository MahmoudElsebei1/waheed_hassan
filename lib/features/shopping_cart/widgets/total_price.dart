import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/shared/custom_button_with_only_title.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: Color(0xFFEAEAEA)),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 17.5),
            child: Column(
              children: [
                Text(
                  'إجمالي السعر',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Gap(4.h),
                Text(
                  '١٨٠٠ جنيه',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Gap(14.w),
          Expanded(
            child: CustomButtonWithOnlyTitle(
              fontSize: 16,
              textButton: 'إتمام الطلب',
              btnColor: Colors.black,
              colorOfTextBtn: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
