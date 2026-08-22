import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';

class AddNewTitleView extends StatelessWidget {
  const AddNewTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBarWithBorderColor(appBarTitle: 'إضافة عنوان جديد'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 16,
          children: [
            Gap(32),
            Text(
              'الاسم الكامل',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF314158),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
