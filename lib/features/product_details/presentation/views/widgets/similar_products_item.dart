import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SimilarProductsItem extends StatelessWidget {
  late final String imagePath;

  SimilarProductsItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 280,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          // border: Border.all(color: Color(0xFFF1F5F9)),
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  imagePath,
                  height: 173,
                  width: 160,
                  fit: BoxFit.cover,
                ),
                PositionedDirectional(
                  start: 12,
                  top: 12,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Color(0xFF314158),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      'جديد',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  end: 8,
                  top: 8,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: Colors.white,
                  ),
                ),
                PositionedDirectional(
                  end: 14,
                  top: 14,
                  child: GestureDetector(
                    onTap: () {},
                    child: SvgPicture.asset('assets/shared/favourites.svg'),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(11.99, 11.99, 11.01, 7.97),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'كلاسيك',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFC9A961),
                      ),
                    ),
                    Gap(2.h),
                    Text(
                      'بدلة سوداء ثلاثية القطع',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A0A0A),
                      ),
                    ),
                    Gap(3.98.h),
                    Row(
                      children: [
                        Text('4.9'),
                        Gap(3.98.w),
                        SvgPicture.asset('assets/home_icons/rating.svg'),
                      ],
                    ),
                    Gap(7.99.h),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(8)),
                          child: SvgPicture.asset(
                            'assets/product_details/buy_now.svg',
                          ),
                        ),
                        Gap(45.65), // spacer may be better than gap
                        Text(
                          '2400',
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF90A1B9),
                          ),
                        ),
                        Gap(1.18.h),
                        Text(
                          '2,100',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                        ),
                        Gap(1.18.h),
                        Text(
                          'ج',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF62748E),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
