import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';
import 'package:waheed_hassan/shared/row_of_text_and_icon.dart';
import 'package:waheed_hassan/shared/way_of_delivery_section.dart';

class OrderCompleteView extends StatelessWidget {
  const OrderCompleteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBorderColor(appBarTitle: 'إتمام الطلب'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 21, 16, 0),
            child: Column(
              children: [
                WayOfDeliverySection(),
                Gap(16),
                RowOfTextAndIcon(
                  textOfRow: 'عنوان التوصيل',
                  iconOfRow: 'assets/shared/black_location_icon.svg',
                ),
                Gap(16),

                //Container Mna2at
                Gap(16),
                RowOfTextAndIcon(
                  textOfRow: 'طريقة التوصيل',
                  iconOfRow: 'assets/shared/way_of_delivery.svg',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
