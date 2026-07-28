import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ItemCategoriesShopping extends StatelessWidget {
  ItemCategoriesShopping({
    super.key,
    required this.iconCategoriesShop,
    required this.categoriesName,
  });

  final String iconCategoriesShop;
  final String categoriesName;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFECECEC), width: 1),
                ),
                child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
              ),
              //TODO accessories icon مش مظبوطة
              PositionedDirectional(
                end: 12,
                top: 12,
                child: SvgPicture.asset(iconCategoriesShop),
              ),
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
    );
  }
}
