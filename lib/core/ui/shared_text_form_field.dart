import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class SharedTextFormField extends StatelessWidget {
  final Color color;
  const SharedTextFormField({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: Colors.black,
      cursorHeight: 22,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFEAEAEA)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFEAEAEA)),
        ),
        prefixIcon: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset(
            'assets/home_icons/waheed_search.svg',
            width: 15.8.w,
            height: 15.8.h,
            color: Color(0xFF9E9E9E),
          ),
        ),
        fillColor: color,
        filled: true,
        focusColor: Colors.black,
        hintText: 'البحث عن منتج...',
        hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Color(0xFFEAEAEA)),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.all(14),
          child: SvgPicture.asset('assets/home_icons/filter.svg'),
        ),
      ),
    );
  }
}
