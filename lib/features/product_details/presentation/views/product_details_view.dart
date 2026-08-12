import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/shared_app_bar.dart';
import 'package:waheed_hassan/features/product_details/presentation/views/widgets/product_details_body.dart';

class ProductDetailsView extends StatelessWidget {
  const ProductDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(appBarTitle: 'تفاصيل المنتج',),
      body: ProductDetailsBody(),
    );
  }
}
