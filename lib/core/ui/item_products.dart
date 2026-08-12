import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemProducts extends StatefulWidget {
  late final String imagePath;

  ItemProducts({super.key, required this.imagePath});

  @override
  State<ItemProducts> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemProducts> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(widget.imagePath),
              PositionedDirectional(
                end: 8,
                top: 8,
                child: CircleAvatar(radius: 16, backgroundColor: Colors.white),
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/home_icons/rating.svg'),
                    Gap(5.w),
                    Text(
                      '4.9',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Gap(4.w),
                    Text('(128)',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF99A1AF),
                      ),),
                  ],
                ),
                Gap(8.h),
                Text(
                  'بدلة كلاسيكية سوداء',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Gap(2.h),
                Text(
                  'صوف إيطالي فاخر',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF6A7282),
                  ),
                ),
                Gap(8.h),
                Row(
                  children: [
                    Text(
                      '2,450',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' ج.م',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6A7282),
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Text(
                          'إيجار',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
