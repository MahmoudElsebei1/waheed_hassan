import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFieldWithTitleAndIcon extends StatelessWidget {
  final String hintText;
  final String svgIcon;
  final Color backgroundColor;
  final double containerPadding;
  final double borderRadius;
  final double contentPadding;
  final Color borderColor;

  CustomTextFieldWithTitleAndIcon({
    super.key,
    required this.hintText,
    required this.svgIcon,
    required this.backgroundColor,
    required this.borderRadius,
    required this.containerPadding,
    required this.contentPadding,
    required this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: containerPadding),
      width: double.infinity,
      decoration: BoxDecoration(color: backgroundColor),
      child: TextFormField(
        textAlign: TextAlign.start,
        textAlignVertical: TextAlignVertical.top,
        cursorColor: Colors.black,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          alignLabelWithHint: false,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          contentPadding: EdgeInsets.symmetric(vertical: contentPadding),
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
            child: SvgPicture.asset(svgIcon),
          ),
          fillColor: backgroundColor,
          filled: true,
          focusColor: Colors.black,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: borderColor),
          ),
        ),
      ),
    );
  }
}
