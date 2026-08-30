import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFieldWithTitleAndIcon extends StatelessWidget {
  String hintText;
  String svgIcon;
  Color backgroundColor;
  double containerPadding;
  double borderRadius;
  double contentPadding;

  CustomTextFieldWithTitleAndIcon({
    super.key,
    required this.hintText,
    required this.svgIcon,
    required this.backgroundColor,
    required this.borderRadius,
    required this.containerPadding,
    required this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: containerPadding),
      // height: 96,
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
          fillColor: Color(0xFFF6F6F6),
          filled: true,
          focusColor: Colors.black,
          hintText: hintText,
          hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius),
            borderSide: BorderSide(color: Color(0xFFEAEAEA)),
          ),
        ),
      ),
    );
  }
}
