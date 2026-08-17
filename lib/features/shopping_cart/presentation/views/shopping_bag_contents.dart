import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_only_title.dart';
import 'package:waheed_hassan/features/shopping_cart/presentation/views/widgets/shopping_bag_contents_body.dart';

class ShoppingBagContentsView extends StatelessWidget {
  const ShoppingBagContentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithOnlyTitle(appBarTitle: 'عربة التسوق',),
      body: ShoppingBagContentsBody(),
    );
  }
}
