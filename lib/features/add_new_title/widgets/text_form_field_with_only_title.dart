import 'package:flutter/material.dart';

class TextFormFieldWithOnlyTitle extends StatelessWidget {
  String hintText;
  TextFormFieldWithOnlyTitle({super.key,required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 1,
      maxLines: null,
      cursorColor: Colors.black,
      textAlignVertical: TextAlignVertical.top,
      textDirection: TextDirection.rtl,
      decoration: InputDecoration(
        alignLabelWithHint: true,
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
        fillColor: Color(0xFFF6F6F6),
        filled: true,
        focusColor: Colors.black,
        hintText: hintText,
        hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Color(0xFFEAEAEA)),
        ),
      ),
    );
  }
}
