import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemShoppingCart extends StatelessWidget {
  const ItemShoppingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusGeometry.circular(16),
        color: Colors.white,
        border: Border.all(color: Color(0xFFEAEAEA)),
      ),
      child: Row(
        children: [
          Gap(8.w),
          ClipRRect(
            // todo المسافات مش مظبوطة من حواليها
            clipBehavior: Clip.antiAlias,
            borderRadius: BorderRadiusGeometry.circular(16),
            child: Image.network(
              'https://imgs.search.brave.com/CMWIyF64UhXU4aO2giqijaF0gsaJEhoKs5YeXXiiny4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9vcHBv/c3VpdHMuY29tL2Nk/bi9zaG9wL2ZpbGVz/L09wcG9TdWl0c19N/ZW5fVHV4ZWRvX1Zp/bnRhZ2UtQmx1ZS1W/ZWx2ZXQxLmpwZz92/PTE2OTcwOTgwODQm/d2lkdGg9MTAwMA',
              // this from me
              height: 130,
              width: 104,
              fit: BoxFit.fill,
            ),
          ),
          Gap(8.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(16.h),
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
                InkWell(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(21),
                      shape: BoxShape.rectangle,
                      border: Border.all(color: Color(0xFFE5E7EB)),
                    ),
                    child: Text(
                      'إيجار',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Gap(6.h),
                Row(
                  children: [
                    Text(
                      '1800',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
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
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5,vertical: 4),
                      decoration: BoxDecoration(
                        color: Color(0xFFF6F6F6),
                        borderRadius: BorderRadiusGeometry.circular(8),
                      ),
                      child: Row(
                        children: [
                          Container(
                            // todo حاسس واحدة اكبر من واحدة
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusGeometry.circular(6),
                            ),
                            // + isn't from ui
                            child: Icon(Icons.add_outlined, color: Colors.black),
                          ),
                          Gap(10.w),
                          Text(
                            '1',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          Gap(10.w),
                          Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusGeometry.circular(6),
                            ),
                            child: SvgPicture.asset(
                              'assets/shopping_cart/delete.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Gap(16.w)
                  ],
                ),
                Gap(16.h)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
