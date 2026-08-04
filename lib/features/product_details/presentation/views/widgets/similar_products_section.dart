import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SimilarProductsSection extends StatelessWidget {
  const SimilarProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.fromLTRB(0, 23.5, 0, 23.5),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              Gap(16.w),
              SvgPicture.asset(
                'assets/product_details/similar_products_icon.svg',
              ),
              Gap(8.w),
              Text(
                'منتجات مشابهة',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0A0A0A),
                ),
              ),
              Spacer(),
              Text(
                'عرض الكل',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF314158),
                ),
              ),
              Gap(3.98.w),
              SvgPicture.asset('assets/shared/show_all.svg'),
              Gap(16.w),
            ],
          ),
        ],
      ),
    );
  }
}
