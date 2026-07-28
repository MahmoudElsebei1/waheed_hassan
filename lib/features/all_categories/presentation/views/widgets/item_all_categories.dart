import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/core/utils/app_text_styles.dart';

class ItemAllCategories extends StatelessWidget {
  const ItemAllCategories({super.key, required this.iconCategory, required this.category});
  final String iconCategory;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFEAEAEA)),
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Gap(8.w),
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
                  end: 13,
                  top: 13,
                  child: SvgPicture.asset(iconCategory),
                ),
              ],
            ),
            Gap(9.5.w),
            Text(category,style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black
            ),)
          ],
        ),
      ),
    );
  }
}
