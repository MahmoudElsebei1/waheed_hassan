import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ProductsFilteringAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const ProductsFilteringAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(16),
          child: SvgPicture.asset(
            'assets/shared/clear.svg',
          ),
        ),
        title: Column(
          children: [
            Text(
              'تصفية المنتجات',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Gap(6.h),
            Text(
              '2 فلتر مفعّل',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color(0xFF686868),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Row(
            children: [
              SvgPicture.asset('assets/products_filtering/reset.svg'),
              Gap(6.w),
              Text(
                'إعادة التعيين',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF686868),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
