import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ItemCategoriesShopping extends StatelessWidget {
  ItemCategoriesShopping({
    super.key,
    required this.iconCategoriesShop,
    required this.categoriesName,
    required this.onTap,
  });

  final String iconCategoriesShop;
  final String categoriesName;
  void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Gap(8.w),
            Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFECECEC), width: 1),
                  ),
                  child: SvgPicture.asset(iconCategoriesShop),
                ),
                //TODO accessories icon مش مظبوطة
              ],
            ),
            Gap(8.w),
            Text(
              categoriesName,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
