import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/product_details/widgets/product_description_section.dart';
import 'package:waheed_hassan/features/product_details/widgets/product_gallery_section.dart';
import 'package:waheed_hassan/features/product_details/widgets/product_title_section.dart';
import 'package:waheed_hassan/features/product_details/widgets/similar_products_section.dart';
import 'measurement_button.dart';
import 'price_and_quantity_section.dart';
import 'color_selector_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // there is an small issue in grid view
          ProductGallerySection(),
          Gap(24.h),
          ProductTitleSection(),
          Gap(2.h),
          ColorSelectorSection(),
          Gap(2.h),
          ProductDescriptionSection(),
          Gap(4.h),
          SimilarProductsSection(),
          Gap(53.h),
          PriceAndQuantitySection(),
          Gap(2.h),
          MeasurementCTAButton(),
          Gap(33.h)
        ],
      ),
    );
  }
}
