import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/core/ui/products.dart';

import '../../../../../core/ui/shared_text_form_field.dart';

class AllProductsBody extends StatelessWidget {
  const AllProductsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 96,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          color: Colors.white,
          child: SharedTextFormField(color: Color(0xFFF6F6F6)),
        ),
        Gap(14.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          // todo عايز اطول الصور شوية
          child: Products(),
        ),
        Spacer(),
        Container(color: Colors.white, height: 33),
      ],
    );
  }
}
