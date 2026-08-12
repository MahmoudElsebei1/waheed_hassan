import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/similar_products_item.dart';

class SimilarProductsSection extends StatelessWidget {
  const SimilarProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              Gap(4.72.w),
              SvgPicture.asset('assets/shared/show_all.svg'),
              Gap(16.w),
            ],
          ),
          Gap(16.w),
          SizedBox(
            height: 320,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) => SimilarProductsItem(
                imagePath:
                'https://imgs.search.brave.com/_Xz47PlMWFx2p1ULyqRsFHwDeHLURPQA-Z0l5wo8naQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5maWxmYW4uY29t/L05ld3NQaWNzL0Zp/bGZhbk5ldy9sYXJn/ZS8yNTYyNTZfMC5q/cGc',),
            ),
          ),
        ],
      ),
    );
  }
}
