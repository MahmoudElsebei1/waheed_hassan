import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:waheed_hassan/features/add_new_title/widgets/filter_by_address_model_sheet.dart';

import '../../../shared/custom_button_with_only_title.dart';

class SaveAddressButton extends StatefulWidget {
  const SaveAddressButton({super.key});

  @override
  State<SaveAddressButton> createState() => _SaveAddressButtonState();
}

class _SaveAddressButtonState extends State<SaveAddressButton> {
  void _showFilterByAddress(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isDismissible: true,
      backgroundColor: Colors.transparent,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: FilterByAddressModelSheet(),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFEAEAEA)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: (){
              _showFilterByAddress(context);
            },
            child: CustomButtonWithOnlyTitle(
              textButton: 'حفظ العنوان',
              btnColor: Colors.black,
              colorOfTextBtn: Colors.white,
              fontSize: 16,
            ),
          ),
          Gap(33),
        ],
      ),
    );
  }
}
