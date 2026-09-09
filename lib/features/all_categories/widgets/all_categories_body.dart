import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/shared/custom_text_field_with_title_and_icon.dart';

import 'item_all_categories.dart';

class AllCategoriesBody extends StatelessWidget {
  const AllCategoriesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CustomTextFieldWithTitleAndIcon(
            hintText: 'البحث عن تصنيف...',
            svgIcon: 'assets/home_icons/waheed_search.svg',
            backgroundColor: Colors.white,
            borderRadius: 12,
            containerPadding: 16,
            contentPadding: 14,
            borderColor: Color(0xFFEAEAEA),
          ),
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
          ItemAllCategories(
            iconCategory: 'assets/shared/accessories.svg',
            category: 'اكسسوارات',
            //there is an issue here
            paddingIcon: 12,
          ),
        ],
      ),
    );
  }
}
