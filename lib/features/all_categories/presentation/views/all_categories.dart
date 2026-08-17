import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import 'package:waheed_hassan/features/all_categories/presentation/views/widgets/text_form_field_section.dart';

import 'widgets/item_all_categories.dart';

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
        body: SingleChildScrollView(
          child: Column(
            children: [
              TextFormFieldSection(),
              Gap(14.h),
              ItemAllCategories(
                iconCategory: 'assets/shared/shirts.svg',
                category: 'قمصان',
                paddingIcon: 8,
              ),
              Gap(8.h),
              ItemAllCategories(
                iconCategory: 'assets/shared/suits.svg',
                category: 'بدلات',
                paddingIcon: 8,
              ),
              Gap(8.h),
              ItemAllCategories(
                iconCategory: 'assets/shared/shoes.svg',
                category: 'أحذية',
                paddingIcon: 8,
              ),
              Gap(8.h),
              // TODO في غلط هنا
              ItemAllCategories(
                iconCategory: 'assets/shared/accessories.svg',
                category: 'اكسسوارات',
                //there is an issue here
                paddingIcon: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
