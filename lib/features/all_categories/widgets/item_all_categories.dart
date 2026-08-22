import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ItemAllCategories extends StatelessWidget {
  const ItemAllCategories({
    super.key,
    required this.iconCategory,
    required this.category,
    required this.paddingIcon,
  });

  final String iconCategory;
  final String category;
  final double paddingIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 56,
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEAEAEA)),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            Gap(8.w),
            Container(
              padding: EdgeInsets.all(paddingIcon),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xFFEAEAEA)),
              ),
              child: SvgPicture.asset(iconCategory),
            ),
            Gap(9.5.w),
            Text(
              category,
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
