import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class TextFormFieldSection extends StatelessWidget {
  const TextFormFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 96,
      decoration: BoxDecoration(color: Colors.white),
      child: Center(
        child: TextFormField(
          cursorColor: Colors.black,
          textDirection: TextDirection.rtl,
          decoration: InputDecoration(
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFEAEAEA)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFEAEAEA)),
            ),
            focusedBorder: OutlineInputBorder(
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
            fillColor: Color(0xFFF6F6F6),
            filled: true,
            focusColor: Colors.black,
            hintText: 'البحث عن تصنيف...',
            hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFEAEAEA)),
            ),
          ),
        ),
      ),
    );
  }
}
