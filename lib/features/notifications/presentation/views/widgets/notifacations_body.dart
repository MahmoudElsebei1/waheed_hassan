import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/notifications/presentation/views/widgets/custom_container_with_icon.dart';
import 'package:waheed_hassan/features/notifications/presentation/views/widgets/notification_day.dart';

class NotificationsBody extends StatelessWidget {
  const NotificationsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Gap(24.h),
          NotificationDay(notificationDay: 'الــيوم'),
          Gap(12.h),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadiusGeometry.circular(20),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'موعد إعادة البدلة',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF141414),
                  ),
                ),
                Gap(4.h),
                Text(
                  'يرجى إعادة البدلة خلال يومين لتجنب أي رسوم إضافية.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A6A6A),
                  ),
                ),
                Gap(4.h),
                Text(
                  'اليوم',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFFC9A96E),
                  ),
                ),
              ],
            ),
          ),
          Gap(8.h),
          CustomContainerWithIcon(
            notificationIcon: 'assets/notification/calendar.svg',
            headline: 'اقترب موعد استلام البدلة',
            description: 'يمكنك استلام البدلة غدًا من فرع ميت غمر.',
            notificationTime: 'قبل 10 دقائق',
            color: Color(0xFFEEF3F9),
          ),
          Gap(16.h),
          NotificationDay(notificationDay: 'سابقاً'),
          Gap(12.h),
          CustomContainerWithIcon(
            notificationIcon: 'assets/notification/confirmed.svg',
            headline: 'تم تأكيد طلبك',
            description: 'تم تأكيد طلب شراء البدلة وسيتم تجهيزها قريبًا.',
            notificationTime: 'قبل 10 دقائق',
            color: Color(0xFFFBF5EC),
          ),
          Gap(12.h),
          CustomContainerWithIcon(
            notificationIcon: 'assets/notification/calendar.svg',
            headline: 'اقترب موعد استلام البدلة',
            description: 'يمكنك استلام البدلة غدًا من فرع ميت غمر.',
            notificationTime: 'قبل 10 دقائق',
            color: Color(0xFFEEF3F9),
          ),
        ],
      ),
    );
  }
}
