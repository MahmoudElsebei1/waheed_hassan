import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class HeaderProductsFiltering extends StatelessWidget {
  const HeaderProductsFiltering({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0,8,18,28.5),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(
              'assets/shared/clear.svg',
            ),
          ),
        ),
        PositionedDirectional(
          start: 126,
          child: Column(
            children: [
              Text(
                'تصفية المنتجات',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Gap(2.h),
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
        ),
        PositionedDirectional(
          end: 0,
          child: Row(
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
        ),
      ],
    );
  }
}
