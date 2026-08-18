import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'header_elements_scroll.dart';
import 'item_my_order_with_one_button.dart';
import 'item_my_order_with_two_btns.dart';

class MyOrdersBody extends StatelessWidget {
  const MyOrdersBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Gap(24.h),
          HeaderElementsScroll(),
          Gap(32.h),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                'مايو ٢٠٢٦',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF90A1B9),
                ),
              ),
            ),
          ),
          Gap(16.h),
          ItemMyOrderWithTwoBtns(),
          // todo on click it expanded
          Gap(16.h),
          ItemMyOrderWithOneButton(),
          Gap(16.h),
          ItemMyOrderWithOneButton(),
          Gap(20.h)
        ],
      ),
    );
  }
}
