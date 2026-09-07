import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/order_review/widgets/delivery_address_section.dart';
import 'package:waheed_hassan/features/order_review/widgets/price_and_confirm_order_section.dart';
import 'package:waheed_hassan/shared/way_of_receive_product.dart';

class OrderReviewBody extends StatelessWidget {
  const OrderReviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              Gap(21),
              WayOfReceiveProduct(),
              Gap(16),
              DeliveryAddressSection(),
            ],
          ),
        ),
        Spacer(),
        PriceAndConfirmOrderSection(),
      ],
    );
  }
}
