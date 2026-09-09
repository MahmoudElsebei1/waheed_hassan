import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class AddNewCardSection extends StatelessWidget {
  final String fieldHeadline;
  final String fieldHintText;
  final bool hintRight;
  final bool descRight;

  const AddNewCardSection({
    super.key,
    required this.fieldHeadline,
    required this.fieldHintText,
    required this.hintRight,
    required this.descRight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: descRight ? Alignment.centerRight : Alignment.centerLeft,
          child: Text(
            fieldHeadline,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Color(0xFF314158),
            ),
          ),
        ),
        Gap(8),
        TextFormField(
          textAlign: TextAlign.start,
          textAlignVertical: TextAlignVertical.top,
          cursorColor: Colors.black,
          textDirection: hintRight?TextDirection.rtl:TextDirection.ltr,
          decoration: InputDecoration(
            alignLabelWithHint: false,
            floatingLabelAlignment: FloatingLabelAlignment.start,
            contentPadding: EdgeInsets.all(12),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFD1D1DB)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFD1D1DB)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFD1D1DB)),
            ),
            fillColor: Colors.white,
            filled: true,
            focusColor: Colors.black,
            hintText: fieldHintText,
            hintTextDirection: hintRight?TextDirection.rtl:TextDirection.ltr,
            hintStyle: TextStyle(color: Color(0xFF6C6C89)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Color(0xFFD1D1DB)),
            ),
          ),
        ),
      ],
    );
  }
}
