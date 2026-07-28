import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_details_app_bar.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProductDetailsAppBar(),
      body: ProductDetailsBody(),
    );
  }
}
