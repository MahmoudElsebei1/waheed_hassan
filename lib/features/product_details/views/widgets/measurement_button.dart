import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_button_with_icon_and_txt.dart';

class MeasurementCTAButton extends StatelessWidget {
  const MeasurementCTAButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      decoration: BoxDecoration(
        color: Colors.white,
        // todo المفروض مش من all
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Align(
        alignment: Alignment.topCenter,
        child: CustomButtonWithIconAndTxt(img: 'assets/product_details/continue.svg',txt: 'المتابعة لتحديد القياسات',),
      ),
    );
  }
}
