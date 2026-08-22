import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/product_filtering/widgets/header_products_filtering.dart';
import 'package:waheed_hassan/features/product_filtering/widgets/price_range_section.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';
import '../../../core/ui/custom_btn_with_only_title.dart';

class ProductsFilteringModelSheet extends StatelessWidget {
  const ProductsFilteringModelSheet({super.key});

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
          UpperModelSheet(),
          SizedBox(
            width: double.infinity,
            child: HeaderProductsFiltering(),
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
          PriceRangeSection(),
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
