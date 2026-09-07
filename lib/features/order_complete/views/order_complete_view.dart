import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/order_complete/widgets/order_complete_body.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';
import 'package:waheed_hassan/shared/total_price.dart';

class OrderCompleteView extends StatelessWidget {
  const OrderCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBorderColor(appBarTitle: 'إتمام الطلب'),
      body: OrderCompleteBody(),
      bottomSheet: SizedBox(height: 113, child: TotalPrice()),
    );
  }
}
