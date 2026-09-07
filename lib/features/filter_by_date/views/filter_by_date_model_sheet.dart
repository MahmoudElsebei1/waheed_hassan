import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/filter_by_date/widgets/filter_for_which.dart';
import 'package:waheed_hassan/features/filter_by_date/widgets/header_model_sheet_section.dart';
import 'package:waheed_hassan/shared/upper_model_sheet.dart';

import '../../../shared/custom_button_with_only_title.dart';
import '../widgets/header_model_sheet_section.dart';

class FilterByDateModelSheetView extends StatefulWidget {
  const FilterByDateModelSheetView({super.key});

  @override
  State<FilterByDateModelSheetView> createState() => _FilterByDateModelSheetViewState();
}

class _FilterByDateModelSheetViewState extends State<FilterByDateModelSheetView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 34),
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
          HeaderModelSheetSection(textModelSheet: 'تصفية حسب التاريخ',),
          Gap(24.h),
          FilterForWhich(),
          Gap(23.h),
          // todo الافضل بدل الرص دا اعمل custom btn لكل زرار
          CustomButtonWithOnlyTitle(
            textButton: 'تطبيق التصفية',
            btnColor: Color(0xFF000000),
            colorOfTextBtn: Colors.white,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
