import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/notifications/presentation/views/widgets/notifacations_body.dart';

import '../../../../core/ui/custom_app_bar_with_title_and_one_icon.dart';

class NotificationsView extends StatelessWidget {
  const NotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(
        appBarTitle: 'الإشعارات',
        fontSize: 16,
      ),
      body: NotificationsBody(),
    );
  }
}
