import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/ui/custom_button_with_icon_and_txt.dart';

class EmptyShoppingCartBody extends StatelessWidget {
  const EmptyShoppingCartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/shopping_cart/mt_shopping_cart.svg'),
            Gap(46.4.h),
            Text(
              'عربة التسوق فارعة...',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Gap(32.h),
            CustomButtonWithIconAndTxt(
              img: 'assets/shopping_cart/go_to_shopping.svg',
              txt: 'اذهب الي التسوق',
            ),
          ],
        ),
      ),
    );
  }
}
