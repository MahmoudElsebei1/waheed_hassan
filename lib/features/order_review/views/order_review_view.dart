import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/order_review/widgets/order_review_body.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';

class OrderReviewView extends StatelessWidget {
  const OrderReviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFAFAFA),
      appBar: AppBarWithBorderColor(appBarTitle: 'مراجعة الطلب'),
      body: OrderReviewBody(),
    );
  }
}
