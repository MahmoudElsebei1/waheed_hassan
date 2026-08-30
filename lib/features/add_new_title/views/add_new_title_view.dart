import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/add_new_title_body.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/introductoryText.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/text_form_field_with_only_title.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';
import 'package:waheed_hassan/shared/custom_text_field_with_title_and_icon.dart';

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
