import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

import '../../../home/presentation/views/widgets/item_categories_shopping.dart';

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
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),

      // grid view was best one
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Gap(32.h),
            Row(
              children: [
                Expanded(
                  child: ItemCategoriesShopping(
                    iconCategoriesShop: 'assets/shared/suits.svg',
                    categoriesName: 'بدلات',
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ItemCategoriesShopping(
                    iconCategoriesShop: 'assets/shared/shirts.svg',
                    categoriesName: 'قمصان',
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: ItemCategoriesShopping(
                    iconCategoriesShop: 'assets/shared/accessories.svg',
                    categoriesName: 'اكسسوارات',
                  ),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: ItemCategoriesShopping(
                    iconCategoriesShop: 'assets/shared/shoes.svg',
                    categoriesName: 'أحذية',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
