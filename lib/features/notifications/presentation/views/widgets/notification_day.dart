import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class NotificationDay extends StatelessWidget {
  final String notificationDay;
  const NotificationDay({super.key, required this.notificationDay});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Gap(19.w),
        Text(
          notificationDay,
          style: TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color(0xFFBFBFBF),
          ),
        ),
        Gap(12.w),
        Expanded(child: Divider(color: Color(0xFFEFEFEF))),
      ],
    );
  }
}
