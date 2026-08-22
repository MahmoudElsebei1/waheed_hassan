import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_cart_icons.dart';
import '../widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithCartIcons(appBarTitle: 'تفاصيل المنتج',),
      body: ProductDetailsBody(),
    );
  }
}
