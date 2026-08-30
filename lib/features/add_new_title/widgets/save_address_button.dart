import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../../shared/custom_button_with_only_title.dart';

class SaveAddressButton extends StatelessWidget {
  const SaveAddressButton({super.key});

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
          CustomButtonWithOnlyTitle(
            textButton: 'حفظ العنوان',
            btnColor: Colors.black,
            colorOfTextBtn: Colors.white,
            fontSize: 16,
          ),
          Gap(33),
        ],
      ),
    );
  }
}
