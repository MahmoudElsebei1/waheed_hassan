import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/all_categories/presentation/views/widgets/item_all_categories_grid_view.dart';

import '../../../../core/utils/app_text_styles.dart';
import '../../../home/presentation/views/widgets/item_categories_grid_view.dart';

class AllCategoriesGrid extends StatelessWidget {
  const AllCategoriesGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              style: AppTextStyles.appBarAllCategories(context),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(32.h),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.w,
                mainAxisSpacing: 8.h,
                childAspectRatio: 2,
              ),
              itemBuilder: (context, index) => ItemAllCategoriesGridView(),
            ),
          ],
        ),
      ),
    );
  }
}
