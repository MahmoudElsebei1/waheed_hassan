import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/core/utils/app_text_styles.dart';

import 'widgets/item_all_categories.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //TODO custom
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            //TODO custom widget
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFECECEC), width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                  ),
                ),
                PositionedDirectional(
                  end: 21,
                  top: 15,
                  child: SvgPicture.asset('assets/shared/back_icon.svg'),
                ),
              ],
            ),
            Gap(89.5.w),
            Text(
              'كل التصنيفات',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(24.h),
            TextFormField(
              textDirection: TextDirection.rtl,
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(14),
                  child: SvgPicture.asset(
                    'assets/home_icons/waheed_search.svg',
                    width: 15.8.w,
                    height: 15.8.h,
                    color: Color(0xFF9E9E9E),
                  ),
                ),
                fillColor: Color(0xFFF6F6F6),
                filled: true,
                focusColor: Colors.black,
                hintText: 'البحث عن تصنيف...',
                hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color: Color(0xFFEAEAEA)),
                ),
              ),
            ),
            Gap(38.h),

            ItemAllCategories(
              iconCategory: 'assets/shared/shirts.svg',
              category: 'قمصان',
            ),
            Gap(8.h),
            ItemAllCategories(
              iconCategory: 'assets/shared/suits.svg',
              category: 'بدلات',
            ),
            Gap(8.h),
            ItemAllCategories(
              iconCategory: 'assets/shared/shoes.svg',
              category: 'أحذية',
            ),
            Gap(8.h),
            ItemAllCategories(
              iconCategory: 'assets/shared/accessories.svg',
              category: 'اكسسوارات',
            ),
          ],
        ),
      ),
    );
  }
}
