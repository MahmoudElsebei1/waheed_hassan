import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/product_filtering/widgets/custom_container.dart';
import 'package:waheed_hassan/features/product_filtering/widgets/header_products_filtering.dart';
import 'package:waheed_hassan/features/product_filtering/widgets/price_range_section.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';

import '../../../shared/custom_button_with_only_title.dart';

class ProductsFilteringModelSheet extends StatefulWidget {
  const ProductsFilteringModelSheet({super.key});

  @override
  State<ProductsFilteringModelSheet> createState() =>
      _ProductsFilteringModelSheetState();
}

class _ProductsFilteringModelSheetState
    extends State<ProductsFilteringModelSheet> {
  List<String> textOfContainer = [
    'الكل',
    'الأحذية',
    'الاكسسوارات',
    'الاكسسوارات',
    'القمصان',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.9,
      ),
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Expanded(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Gap(8.h),
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    CustomContainer(
                      textOfContainer: textOfContainer[0],
                      isSelected: true,
                    ),
                    CustomContainer(textOfContainer: textOfContainer[1]),
                    CustomContainer(textOfContainer: textOfContainer[2]),
                    CustomContainer(textOfContainer: textOfContainer[3]),
                    CustomContainer(textOfContainer: textOfContainer[4]),
                  ],
                ),
              ),
              Gap(8.h),
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
              Gap(8.h),
              IgnorePointer(
                child: RangeSlider(
                  // activeColor: ,
                  inactiveColor: Color(0xFFDDDDDD),
                  values: RangeValues(50, 200),
                  onChanged: null,
                  min: -200,
                  max: 200,
                ),
              ),
              Gap(8.h),
              PriceRangeSection(),
              Gap(16.5),
              CustomButtonWithOnlyTitle(
                fontSize: 16,
                textButton: 'عرض النتائج (24)',
                btnColor: Colors.black,
                colorOfTextBtn: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
