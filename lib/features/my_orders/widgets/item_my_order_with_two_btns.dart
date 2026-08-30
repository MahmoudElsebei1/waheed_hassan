import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/shared/custom_button_with_only_title.dart';

class ItemMyOrderWithTwoBtns extends StatelessWidget {
  const ItemMyOrderWithTwoBtns({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFEAEAEA)),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'طلب رقم',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF90A1B9),
                ),
              ),
              Gap(8.w),
              Text(
                'EQ-482910',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF314158),
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.fromLTRB(8, 4, 5.5, 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: Color(0xFF1E3A8A).withValues(alpha: 0.1),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/my_orders_assets/conduction_mode.svg',
                    ),
                    Gap(4.w),
                    Text(
                      'قيد التوصيل',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF1E3A8A),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Gap(19.77),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(6),
                child: Image.network(
                  'https://imgs.search.brave.com/dfUAxKctI7GkLTfjfgEj8wDBN9DzYSyV3VYde4og_OQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzLzFjLzk1/L2JkLzFjOTViZDA1/NTYzN2Q1NjJjNjk5/ZDViNzk3NDFhNzA0/LmpwZw',
                  height: 56,
                  width: 56,
                  fit: BoxFit.fill,
                ),
              ),
              Gap(11.99.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'بدلة سوداء + ملحقات',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  Gap(3.h),
                  Text(
                    '3 منتجات • ٨ مايو ٢٠٢٦',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF62748E),
                    ),
                  ),
                  Gap(3.h),
                  Text(
                    '3,475 ج.م',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF314158),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Gap(15.98.h),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: CustomButtonWithOnlyTitle(
                    fontSize: 16,
                    textButton: 'عرض التفاصيل',
                    btnColor: Color(0xFFe6e6e6),
                    colorOfTextBtn: Colors.black,
                  ),
                ),
              ),
              Gap(8.w),
              Expanded(
                child: SizedBox(
                  height: 36,
                  child: CustomButtonWithOnlyTitle(
                    fontSize: 16,
                    textButton: 'تتبع الطلب',
                    btnColor: Colors.black,
                    colorOfTextBtn: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
