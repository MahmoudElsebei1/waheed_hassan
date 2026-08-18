import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_only_title.dart';
import 'package:waheed_hassan/features/shopping_cart/views/widgets/mt_shopping_cart_body.dart';

class ShoppingCartMtView extends StatelessWidget {
  const ShoppingCartMtView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithOnlyTitle(appBarTitle: 'عربة التسوق',),
      body: MtShoppingCartBody(),
    );
  }
}
