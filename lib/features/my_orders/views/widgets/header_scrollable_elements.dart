import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

import '../../../filter_by_date/views/filter_by_date_view.dart';

class HeaderScrollableElements extends StatefulWidget {
  const HeaderScrollableElements({super.key});

  @override
  State<HeaderScrollableElements> createState() => _HeaderScrollableElementsState();
}

class _HeaderScrollableElementsState extends State<HeaderScrollableElements> {
  final List<String> myOrderStates = [
    'الكل',
    'قيد المعالجة',
    'تم التسليم',
    'قيد التوصيل',
    'ملغي',
  ];
  int selectedIndex=0;
  void _showFilterByDateSheet(BuildContext context) {
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
        child: FilterByDateView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Gap(8.w),
          GestureDetector(
            onTap: () {
              _showFilterByDateSheet(context);
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withValues(alpha: 0.2)),
                color: Colors.white,
                borderRadius: BorderRadius.circular(99),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/my_orders_assets/all_periods.svg'),
                  Gap(8.w),
                  Text(
                    'كل الفترات',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF334155),
                    ),
                  ),
                  Gap(8.w),
                  SvgPicture.asset('assets/my_orders_assets/arrow_down.svg'),
                ],
              ),
            ),
          ),
          Gap(8.w),
          ...List.generate(
            myOrderStates.length,
            (index) => GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex=index;
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: 8),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black.withValues(alpha: 0.2)),
                  color: selectedIndex==index?Colors.black:Colors.white,
                  borderRadius: BorderRadius.circular(99),
                ),
                child: Text(
                  myOrderStates[index],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: selectedIndex==index?Colors.white:Color(0xFF334155),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
