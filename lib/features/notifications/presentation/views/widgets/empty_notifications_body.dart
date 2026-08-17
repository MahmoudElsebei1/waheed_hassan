import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmptyNotificationsBody extends StatelessWidget {
  const EmptyNotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 48,
              backgroundColor: Color(0xFFF5EFE4),
              child: SvgPicture.asset(
                'assets/mt_notifications/non_notifications.svg',
              ),
            ),
            Gap(20.h),
            Text(
              'لا توجد إشعارات حتى الآن',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w600,
                color: Color(0xFF1A1A1A),
              ),
            ),
            Gap(8.h),
            Text(
              'ستظهر إشعاراتك هنا عند وصولها',
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: Color(0xFFAAAAAA),
              ),
            ),
            Gap(20.h),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'استعرض التشكيلة',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 13.5),
                fixedSize: Size(double.infinity, 48),
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
