import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import 'package:waheed_hassan/features/notifications/views/widgets/empty_notifications_body.dart';

class EmptyNotificationsView extends StatelessWidget {
  const EmptyNotificationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(
        appBarTitle: 'الإشعارات',
        fontSize: 16,
      ),
      body: EmptyNotificationsBody(),
    );
  }
}
