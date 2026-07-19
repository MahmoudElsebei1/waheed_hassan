import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/core/utils/app_text_styles.dart';

class ItemCategoriesGridView extends StatelessWidget {
  ItemCategoriesGridView({super.key});

  final List<String> categories = ['بدلات', 'قمصان', 'اكسسوارات', 'أحذية'];

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16)),
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFECECEC),
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFECECEC), width: 1),
                ),
                child: CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.white,
                ),
              ),
              PositionedDirectional(
                end: 12,
                top: 12,
                child: SvgPicture.asset('assets/home_icons/suits.svg'),
              ),
            ],
          ),
          Gap(8.w),
          Text(categories[1], style: AppTextStyles.gridViewHomeItem(context)),
        ],
      ),
    );
  }
}
