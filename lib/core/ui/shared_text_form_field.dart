import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/product_filtering/views/products_filtering.dart';

class SharedTextFormField extends StatefulWidget {
  final Color color;
  const SharedTextFormField({super.key, required this.color});

  @override
  State<SharedTextFormField> createState() => _SharedTextFormFieldState();
}

class _SharedTextFormFieldState extends State<SharedTextFormField> {

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
        child: ProductsFiltering(),
      ),
    );
  }

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
        fillColor: widget.color,
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
          child: GestureDetector(
              onTap: (){
                _showFilterByDateSheet(context);

              },
              child: SvgPicture.asset('assets/home_icons/filter.svg')),
        ),
      ),
    );
  }
}
