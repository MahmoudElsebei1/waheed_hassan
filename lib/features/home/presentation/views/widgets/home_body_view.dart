import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/app_text_styles.dart';
import 'item_categories_grid_view.dart';
import 'item_grid_view.dart';

class HomeBodyView extends StatelessWidget {
  const HomeBodyView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Gap(25.h),
          //TODO rtl direction -> done
          TextFormField(
            textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  'assets/home_icons/waheed_search.svg',
                  width: 15.8.w,
                  height: 15.8.h,
                  color: Color(0xFF9E9E9E),
                ),
              ),
              fillColor: Colors.white,
              filled: true,
              focusColor: Colors.black,
              hintText: 'البحث عن منتج...',hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  'assets/home_icons/filter.svg',
                ),
              ),
            ),
          ),
          Gap(26.h),
          Stack(children: [Container(), Container()]),
          Gap(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
              Gap(8).row,
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
              Gap(8).row,
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
            ],
          ),
          Gap(16.h),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'تسوق حسب التصنيف',
                style: AppTextStyles.boldCategory(context),
              ),
              Spacer(),
              Text('عرض الكل', style: AppTextStyles.showAll(context)),
            ],
          ),
          Gap(15.h),
          //TODO there is an bitinana
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.w,
              mainAxisSpacing: 8.h,
              childAspectRatio: 2.9,
            ),
            itemBuilder: (context, index) => ItemCategoriesGridView(),
          ),
          Gap(16.h),
          Row(
            textDirection: TextDirection.rtl,
            children: [
              Text(
                'أحدث المنتجات',
                style: AppTextStyles.boldCategory(context),
              ),
              Spacer(),
              Text('عرض المزيد', style: AppTextStyles.showAll(context)),
            ],
          ),
          Gap(17.h),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16.w,
              mainAxisSpacing: 16.h,
              childAspectRatio: 0.7,
            ),
            itemBuilder: (context, index) => ItemGridView(),
          ),
          Gap(122.h),
        ],
      ),
    );
  }
}
