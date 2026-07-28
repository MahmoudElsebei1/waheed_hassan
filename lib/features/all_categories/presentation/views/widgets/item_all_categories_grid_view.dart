import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemAllCategoriesGridView extends StatelessWidget {
  const ItemAllCategoriesGridView({super.key, required this.iconCategory, required this.category});
  final String iconCategory;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(iconCategory),
          Gap(8.h),
          Text(category),
        ],
      ),
    );
  }
}
