import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/add_new_title/views/add_new_title_view.dart';

class ContainerWithDottedBorder extends StatelessWidget {
  const ContainerWithDottedBorder({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => AddNewTitleView()),
        );
      },
      child: DottedBorder(
        options: RoundedRectDottedBorderOptions(
          radius: Radius.circular(12),
          color: Color(0xFF314158),
          padding: EdgeInsets.symmetric(vertical: 13),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/shared/add.svg'),
            Gap(4),
            Text(
              'إضافة عنوان جديد',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xFF314158),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
