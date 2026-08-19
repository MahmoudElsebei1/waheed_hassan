import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/features/shopping_cart/views/widgets/total_price.dart';

import 'enter_discount_code.dart';
import 'item_shopping_cart.dart';
import 'order_summary.dart';

class ShoppingBagContentsBody extends StatelessWidget {
  const ShoppingBagContentsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                Gap(32.h),
                ItemShoppingCart(),
                Gap(12.h),
                ItemShoppingCart(),
                Gap(12.h),
                ItemShoppingCart(),
                Gap(16.h),
                EnterDiscountCode(),
                Gap(16.h),
                OrderSummary(),
                Gap(85.h), // i think spacer is better
              ],
            ),
          ),
          TotalPrice(),
        ],
      ),
    );
  }
}
