import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/order_complete/widgets/add_new_card_section.dart';
import 'package:waheed_hassan/shared/custom_button_with_only_title.dart';
import 'package:waheed_hassan/shared/custom_text_field_with_title_and_icon.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';

import '../../filter_by_date/widgets/header_model_sheet_section.dart';

class AddNewCardModelSheet extends StatelessWidget {
  const AddNewCardModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 34),
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(32),
            topRight: Radius.circular(32),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            UpperModelSheet(),
            Gap(16),
            HeaderModelSheetSection(textModelSheet: 'طريقة دفع جديدة'),
            Gap(16),
            AddNewCardSection(
              fieldHeadline: 'اسم حامل الكارت',
              fieldHintText: 'الاسم',
              descRight: true,
              hintRight: true,
            ),
            Gap(8),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'رقم الكارت',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF314158),
                ),
              ),
            ),

            Gap(8),
            CustomTextFieldWithTitleAndIcon(
              hintText: '0000 0000 0000 0000',
              svgIcon: 'assets/shared/way_of_payment.svg',
              backgroundColor: Color(0xFFFFFFFF),
              borderRadius: 12,
              containerPadding: 0,
              contentPadding: 12,
              borderColor: Color(0xFFD1D1DB),
            ),
            Gap(8),
            Row(
              children: [
                Expanded(
                  child: AddNewCardSection(
                    fieldHeadline: 'CVV',
                    fieldHintText: '•••',
                    descRight: false,
                    hintRight: false,
                  ),
                ),
                Gap(18),
                Expanded(
                  child: AddNewCardSection(
                    fieldHeadline: 'تاريخ الانتهاء',
                    fieldHintText: 'MM/YY',
                    hintRight: false,
                    descRight: true,
                  ),
                ),
              ],
            ),
            Gap(16),
            Row(
              children: [
                Checkbox(
                  value: true,
                  activeColor: Colors.black,

                  onChanged: (value) {
                  },
                ),
                Text(
                  'حفظ الكارت للمعاملات القادمة',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                ),
              ],
            ),

            Gap(33),
            CustomButtonWithOnlyTitle(
              textButton: 'حفظ',
              btnColor: Colors.black,
              colorOfTextBtn: Colors.white,
              fontSize: 16,
            ),
          ],
        ),
      ),
    );
  }
}
