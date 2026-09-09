import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/order_complete/widgets/way_of_delivery_container.dart';
import 'package:waheed_hassan/features/order_complete/widgets/way_of_payment.dart';
import 'package:waheed_hassan/features/order_complete/widgets/way_of_payment_model_sheet.dart';
import 'package:waheed_hassan/shared/container_with_dotted_border.dart';
import '../../../shared/order_summary.dart';
import '../../../shared/row_of_text_and_icon.dart';
import '../../../shared/way_of_receive_product.dart';

class OrderCompleteBody extends StatefulWidget {
  const OrderCompleteBody({super.key});

  @override
  State<OrderCompleteBody> createState() => _OrderCompleteBodyState();
}

class _OrderCompleteBodyState extends State<OrderCompleteBody> {
  void _wayOfPayment(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: WayOfPaymentModelSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 21, 16, 0),
        child: Column(
          children: [
            WayOfReceiveProduct(),
            Gap(16),
            RowOfTextAndIcon(
              textOfRow: 'عنوان التوصيل',
              iconOfRow: 'assets/shared/black_location_icon.svg',
            ),
            Gap(16),
            ContainerWithDottedBorder(),
            Gap(16),
            RowOfTextAndIcon(
              textOfRow: 'طريقة التوصيل',
              iconOfRow: 'assets/shared/way_of_delivery.svg',
            ),
            Gap(12),
            WayOfDeliveryContainer(
              isSelected: true,
              deliveryWay: 'التوصيل العادي',
              duration: '٣–٥ أيام عمل',
              price: '٦٠ ج.م',
            ),
            Gap(8),
            WayOfDeliveryContainer(
              isSelected: false,
              deliveryWay: 'التوصيل السريع',
              duration: 'خلال ٢٤ ساعة',
              price: '١٢٠ ج.م',
            ),
            Gap(16),
            RowOfTextAndIcon(
              textOfRow: 'طريقة الدفع',
              iconOfRow: 'assets/shared/way_of_payment.svg',
            ),
            Gap(12),
            WayOfPayment(
              containerIcon: 'assets/shared/pay_when_deliver.svg',
              paymentWay: 'الدفع عند الاستلام',
              paymentDesc: 'ادفع نقداً عند وصول الطلب',
              isSelected: true,
            ),
            Gap(8),
            WayOfPayment(
              containerIcon: 'assets/shared/visa_or_misa_card.svg',
              paymentWay: 'بطاقة ائتمانية / ميزة',
              paymentDesc: 'فيزا، ماستركارد، ميزة',
              isSelected: false,
              onTap: () => _wayOfPayment(context),
            ),
            Gap(16),
            OrderSummary(),
            Gap(151.81),
          ],
        ),
      ),
    );
  }
}
