import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeasurementCTAButton extends StatelessWidget {
  const MeasurementCTAButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      decoration: BoxDecoration(color: Colors.white,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(24),bottomRight: Radius.circular(24))
      ),
      padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      child: Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
          height: 56,
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/product_details/continue.svg'),
                Gap(12.w),
                Text(
                  'المتابعة لتحديد القياسات',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
