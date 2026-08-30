import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import 'package:waheed_hassan/features/all_categories/widgets/all_categories_body.dart';

import '../widgets/item_all_categories.dart';
import '../../../shared/custom_text_field_with_title_and_icon.dart';

class AllCategoriesView extends StatefulWidget {
  const AllCategoriesView({super.key});

  @override
  State<AllCategoriesView> createState() => _AllCategoriesViewState();
}

class _AllCategoriesViewState extends State<AllCategoriesView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: CustomAppBarWithTitleAndOneIcon(
          appBarTitle: 'كل التصنيفات',
          fontSize: 18,
        ),
        body: AllCategoriesBody(),
      ),
    );
  }
}
