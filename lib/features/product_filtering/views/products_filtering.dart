import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/product_filtering/views/widgets/products_filtering_app_bar.dart';
import 'package:waheed_hassan/features/product_filtering/views/widgets/products_filtering_body.dart';

class ProductsFiltering extends StatelessWidget {
  const ProductsFiltering({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ProductsFilteringAppBar(),
      body: ProductsFilteringBody(),
    );
  }
}
