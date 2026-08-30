import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/save_address_button.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/text_form_field_with_only_title.dart';

import '../../../shared/custom_text_field_with_title_and_icon.dart';
import 'introductoryText.dart';

class AddNewTitleBody extends StatelessWidget {
  const AddNewTitleBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: Column(
                spacing: 16,
                children: [
                  Gap(32),
                  IntroductoryText(introductoryText: 'الاسم الكامل'),
                  CustomTextFieldWithTitleAndIcon(
                    hintText: 'أدخل اسمك الكامل',
                    svgIcon: 'assets/nav_bar_icons/acc_nav_bar_icon.svg',
                    backgroundColor: Colors.transparent,
                    borderRadius: 16,
                    containerPadding: 0,
                    contentPadding: 14,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            IntroductoryText(introductoryText: 'المدينة'),
                            Gap(12),
                            TextFormFieldWithOnlyTitle(
                              hintText: 'أدخل المدينة',
                            ),
                          ],
                        ),
                      ),
                      Gap(16),
                      Expanded(
                        child: Column(
                          children: [
                            IntroductoryText(
                              introductoryText: 'المنطقة / الحي',
                            ),
                            Gap(12),
                            TextFormFieldWithOnlyTitle(
                              hintText: 'أدخل المنطقة او الحي',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  IntroductoryText(introductoryText: 'رقم الهاتف'),
                  CustomTextFieldWithTitleAndIcon(
                    hintText: '+15 5X XXX XXXX',
                    svgIcon: 'assets/shared/phone_number.svg',
                    backgroundColor: Colors.transparent,
                    borderRadius: 16,
                    containerPadding: 0,
                    contentPadding: 14,
                  ),
                  IntroductoryText(introductoryText: 'العنوان بالتفصيل'),
                  //todo لسا دي بس
                  CustomTextFieldWithTitleAndIcon(
                    hintText: 'الشارع، رقم المبنى، علامة مميزة',
                    svgIcon: 'assets/shared/location.svg',
                    backgroundColor: Colors.transparent,
                    borderRadius: 16,
                    containerPadding: 0,
                    contentPadding: 32,
                  ),
                ],
              ),
            ),
          ),
        ),
        Gap(16),
        SaveAddressButton(),
      ],
    );
  }
}
