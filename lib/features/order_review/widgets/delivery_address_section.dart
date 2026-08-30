import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/order_review/widgets/delivery_address_description.dart';
import 'package:waheed_hassan/shared/row_of_text_and_icon.dart';
import 'package:waheed_hassan/shared/order_summary_upper_section.dart';

class DeliveryAddressSection extends StatelessWidget {
  const DeliveryAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            RowOfTextAndIcon(),
            Spacer(),
            Text(
              'تغيير',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
        Gap(16),
        DeliveryAddressDescription(),
        Gap(16),
        Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Color(0xFFEAEAEA)),
          ),
          child: OrderSummaryUpperSection(img: 'assets/shared/arrow_up.svg'),
        ),
      ],
    );
  }
}
