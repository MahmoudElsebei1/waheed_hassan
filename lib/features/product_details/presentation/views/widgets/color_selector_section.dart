import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class ColorSelectorSection extends StatelessWidget {
  const ColorSelectorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'اللون',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                Spacer(),
                Text(
                  'رصاصي داكن',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF62748E),
                  ),
                ),
              ],
            ),
            Gap(12.h),
            Row(
              //custom
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF3F4651),
                ),
                Gap(12.w),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF172554),
                ),
                Gap(12.w),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF1A1A1A),
                ),
                Gap(12.w),

                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFC9B79C),
                )

              ],
            ),
          ],
        ),
      ),
    );
  }
}
