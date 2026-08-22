import 'package:flutter/material.dart';
import '../../../../core/ui/custom_app_bar_with_title_and_one_icon.dart';
import '../widgets/notifacations_body.dart';

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
