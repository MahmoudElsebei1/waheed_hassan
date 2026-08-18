import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/core/ui/custom_btn_with_only_title.dart';

class ProductsFilteringBody extends StatefulWidget {
  const ProductsFilteringBody({super.key});

  @override
  State<ProductsFilteringBody> createState() => _ProductsFilteringBodyState();
}

class _ProductsFilteringBodyState extends State<ProductsFilteringBody> {
  final List<String> categories = ['الكل', 'الأحذية', 'الاكسسوارات', 'القمصان'];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(16, 16, 16, 33),
      child: Column(
        children: [
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
                  borderRadius: BorderRadiusGeometry.circular(16),
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
                  borderRadius: BorderRadiusGeometry.circular(16),
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
          Gap(32.5.h),
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
