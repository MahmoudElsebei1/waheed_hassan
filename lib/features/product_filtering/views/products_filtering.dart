import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/ui/custom_btn_with_only_title.dart';

class ProductsFiltering extends StatelessWidget {
  const ProductsFiltering({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 33),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Stack(
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
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'الأقسام',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF314158),
              ),
            ),
          ),
          Gap(12.h),
          //todo containers
          Wrap(spacing: 10, runSpacing: 10, children: []),
          Gap(16.h),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              'نطاق السعر',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xFF314158),
              ),
            ),
          ),
          Gap(16.h),
          //todo slider
          Gap(32.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 60.5,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    Gap(10.h),
                    Text(
                      'الأدنى',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF64748B),
                      ),
                    ),
                    Text(
                      '0 ج.م',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 2,
                width: 100,
                child: Divider(color: const Color(0xFFE2E8F0), thickness: 2),
              ),
              Container(
                height: 60.5,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Color(0xFFF6F6F6),
                ),
                child: Column(
                  children: [
                    Gap(10.h),
                    Text(
                      'الأعلى',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF64748B),
                      ),
                    ),
                    Text(
                      '1800 ج.م',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          CustomBtnWithOnlyTitle(
            fontSize: 16,
            textButton: 'عرض النتائج (24)',
            btnColor: Colors.black,
            colorOfTextBtn: Colors.white,
          ),
        ],
      ),
    );
  }
}
