import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_only_title.dart';
import 'package:waheed_hassan/features/my_orders/views/widgets/my_orders_body.dart';

class MyOrdersView extends StatelessWidget {
  const MyOrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWithOnlyTitle(appBarTitle:'طلباتي',),
      body: MyOrdersBody(),

    );
  }
}
