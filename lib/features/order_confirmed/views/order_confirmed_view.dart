import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/order_confirmed/widgets/order_confirmed_body.dart';

class OrderConfirmedView extends StatelessWidget {
  const OrderConfirmedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrderConfirmedBody(),
    );
  }
}
