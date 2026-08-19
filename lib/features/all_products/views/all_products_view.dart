import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_cart_icons.dart';
import 'package:waheed_hassan/features/all_products/views/widgets/all_products_body.dart';

class AllProductsView extends StatelessWidget {
  const AllProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithCartIcons(appBarTitle: 'كل المنتجات',),
      body: AllProductsBody(),
    );
  }
}
