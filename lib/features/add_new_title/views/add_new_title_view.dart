import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/add_new_title_body.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';

class AddNewTitleView extends StatelessWidget {
  const AddNewTitleView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: Color(0xFFFAFAFA),
        appBar: AppBarWithBorderColor(appBarTitle: 'إضافة عنوان جديد'),
        // bottom border is higher
        body: AddNewTitleBody(),
      ),
    );
  }
}
