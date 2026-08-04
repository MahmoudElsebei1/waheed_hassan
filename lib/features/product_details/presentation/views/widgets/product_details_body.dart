import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_description_section.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_gallery_section.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_title_section.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/similar_products_section.dart';

import 'color_selector_section.dart';

class ProductDetailsBody extends StatelessWidget {
  const ProductDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [ProductGallerySection(), Gap(24.h), ProductTitleSection(),Gap(2.h)
        ,ColorSelectorSection(),Gap(2.h),ProductDescriptionSection(),Gap(4.h),SimilarProductsSection(),
        ],
      ),
    );
  }
}
