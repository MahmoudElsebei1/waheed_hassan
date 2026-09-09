import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/order_complete/widgets/way_of_payment.dart';
import 'package:waheed_hassan/shared/custom_button_with_only_title.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';

import '../../filter_by_date/widgets/header_model_sheet_section.dart';
import 'add_new_card_model_sheet.dart';

class WayOfPaymentModelSheet extends StatefulWidget {
  const WayOfPaymentModelSheet({super.key});

  @override
  State<WayOfPaymentModelSheet> createState() => _WayOfPaymentModelSheetState();
}

class _WayOfPaymentModelSheetState extends State<WayOfPaymentModelSheet> {
  void _addNewCard(BuildContext context) {
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
        child: AddNewCardModelSheet(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              UpperModelSheet(),
              Gap(18),
              HeaderModelSheetSection(textModelSheet: 'طريقة الدفع'),
              Gap(26),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'الكروت المحفوظة',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
              ),
              Gap(4),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  'اختر طريقة الدفع لهذا الطلب',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF5E5E5E),
                  ),
                ),
              ),
              Gap(16),
              WayOfPayment(
                paymentWay: 'ماستر كارد',
                paymentDesc: ' ينتهي بـ 4242',
                isSelected: true,
                containerIcon: 'assets/shared/master_card.svg',
              ),
              Gap(8),
              WayOfPayment(
                paymentWay: 'فيزا',
                paymentDesc: ' ينتهي بـ 6589',
                isSelected: false,
                containerIcon: 'assets/shared/visa_card.svg',
              ),
              Gap(24),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                  _addNewCard(context);
                },
                child: DottedBorder(
                  options: RoundedRectDottedBorderOptions(
                    radius: Radius.circular(12),
                    color: Color(0xFF314158),
                    padding: EdgeInsets.symmetric(vertical: 13),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/shared/add.svg'),
                      Gap(10),
                      Text(
                        'إضافة كارت جديد',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF314158),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(45),
              CustomButtonWithOnlyTitle(
                textButton: 'حفظ',
                btnColor: Colors.black,
                colorOfTextBtn: Colors.white,
                fontSize: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
