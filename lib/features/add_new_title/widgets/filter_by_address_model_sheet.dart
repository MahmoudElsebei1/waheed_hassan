import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/filter_by_date/widgets/header_model_sheet_section.dart';
import 'package:waheed_hassan/shared/container_with_dotted_border.dart';
import 'package:waheed_hassan/shared/custom_button_with_only_title.dart';
import 'package:waheed_hassan/shared/delivery_address_description.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';
import '../../../shared/row_of_text_and_icon.dart';

class FilterByAddressModelSheet extends StatelessWidget {
  const FilterByAddressModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 407,
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
        children: [
          UpperModelSheet(),
          HeaderModelSheetSection(textModelSheet: 'عنوان التوصيل'),
          Gap(16),
          RowOfTextAndIcon(
            textOfRow: 'عنوان التوصيل',
            iconOfRow: 'assets/shared/black_location_icon.svg',
          ),
          Gap(16),
          DeliveryAddressDescription(),
          Gap(16),
          ContainerWithDottedBorder(),
          Gap(32),
          CustomButtonWithOnlyTitle(
            textButton: 'تأكيد العنوان',
            btnColor: Colors.black,
            colorOfTextBtn: Colors.white,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
