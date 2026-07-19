import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ItemAllCategories extends StatelessWidget {
  const ItemAllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          children: [
            Gap(8.w),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFECECEC), width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                  ),
                ),
                PositionedDirectional(
                  end: 13,
                  top: 13,
                  child: SvgPicture.asset('assets/home_icons/suits.svg'),
                ),
              ],
            ),
            Gap(9.5.w),
            Text('قمصان')
          ],
        ),
      ),
    );
  }
}
