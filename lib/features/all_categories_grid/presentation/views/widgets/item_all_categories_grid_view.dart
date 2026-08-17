import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemAllCategoriesGridView extends StatelessWidget {
  const ItemAllCategoriesGridView({
    super.key,
    required this.iconCategory,
    required this.category, required this.paddingIcon,
  });

  final String iconCategory;
  final String category;
  final double paddingIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      // todo حاسس في مسافات راسي عايزة تتظبط
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(paddingIcon),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xFFEAEAEA)),
            ),
            child: SvgPicture.asset(iconCategory),
          ),
          Gap(8.h),
          Text(category,style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black
          ),),
        ],
      ),
    );
  }
}
