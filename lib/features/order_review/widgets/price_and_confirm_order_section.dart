import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../../shared/custom_button_with_icon_and_txt.dart';

class PriceAndConfirmOrderSection extends StatelessWidget {
  const PriceAndConfirmOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return         Container(
      padding: EdgeInsets.fromLTRB(16, 12, 16, 45),
      color: Colors.white,
      child: Row(
        children: [
          Gap(20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'إجمالي السعر',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Gap(0.77),
              Row(
                children: [
                  Text(
                    '٦٬٦٦٠ جنيه',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(10),
          Expanded(
            child: CustomButtonWithIconAndTxt(
              img: 'assets/shared/confirm_order.svg',
              txt: 'تأكيد الطلب',
            ),
          ),
        ],
      ),
    )
    ;
  }
}
