import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_only_title.dart';
import 'package:waheed_hassan/features/shopping_cart/widgets/empty_shopping_cart_body.dart';

class EmptyShoppingCartView extends StatelessWidget {
  const EmptyShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithOnlyTitle(appBarTitle: 'عربة التسوق',),
      body: EmptyShoppingCartBody(),
    );
  }
}
