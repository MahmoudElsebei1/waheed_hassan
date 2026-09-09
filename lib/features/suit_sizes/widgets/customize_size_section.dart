import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

import '../../../shared/custom_text_field_with_title_and_icon.dart';

class CustomizeSizeSection extends StatelessWidget {
  final String sizePart;
  final String partRange;
  final int size;

  const CustomizeSizeSection({
    super.key,
    required this.sizePart,
    required this.partRange,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              sizePart,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xFF314158),
              ),
            ),
            Spacer(),
            Text(
              partRange,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w500,
                color: Color(0xFF90A1B9),
              ),
            ),
          ],
        ),
        Gap(12),
        CustomTextFieldWithTitleAndIcon(
          hintText: size.toString(),
          svgIcon: 'assets/shared/for_size.svg',
          backgroundColor: Color((0xFFF6F6F6)),
          borderRadius: 16,
          containerPadding: 0,
          contentPadding: 16,
          borderColor: Colors.transparent,
        ),
      ],
    );
  }
}
