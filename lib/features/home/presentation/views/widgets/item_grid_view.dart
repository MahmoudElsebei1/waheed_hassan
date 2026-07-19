import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/core/utils/app_text_styles.dart';

class ItemGridView extends StatelessWidget {
  const ItemGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(
                'https://imgs.search.brave.com/_Xz47PlMWFx2p1ULyqRsFHwDeHLURPQA-Z0l5wo8naQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5maWxmYW4uY29t/L05ld3NQaWNzL0Zp/bGZhbk5ldy9sYXJn/ZS8yNTYyNTZfMC5q/cGc',
              ),
              PositionedDirectional(
                end: 6,
                top: 6,
                child: CircleAvatar(radius: 16, backgroundColor: Colors.white),
              ),
              PositionedDirectional(
                end: 12,
                top: 12,
                child: SvgPicture.asset('assets/home_icons/favourites.svg'),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/home_icons/rating.svg'),
                    Gap(5.w),
                    Text('4.9'),
                    Gap(4.w),
                    Text('(128)'),
                  ],
                ),
                Text(
                  'بدلة كلاسيكية سوداء',
                  style: AppTextStyles.gridViewHomeItem(context),
                ),
                Text('صوف إيطالي فاخر'),
                Row(
                  children: [
                    Text('2,450'),
                    Text(' ج.م'),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Text('إيجار'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
