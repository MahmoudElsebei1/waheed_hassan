import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/home/presentation/views/widgets/latest_products.dart';
import 'package:waheed_hassan/features/home/presentation/views/widgets/shop_by_category.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          Gap(25.h),
          TextFormField(
            cursorColor: Colors.black,
            cursorHeight: 22,
            // textDirection: TextDirection.rtl,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
              ),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset(
                  'assets/home_icons/waheed_search.svg',
                  width: 15.8.w,
                  height: 15.8.h,
                  color: Color(0xFF9E9E9E),
                ),
              ),
              fillColor: Color(0xFFFFFFFF),
              filled: true,
              focusColor: Colors.black,
              hintText: 'البحث عن منتج...',
              hintStyle: TextStyle(color: Color(0xFF9E9E9E)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Color(0xFFEAEAEA)),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(14),
                child: SvgPicture.asset('assets/home_icons/filter.svg'),
              ),
            ),
          ),
          Gap(26.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Gap(12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
              Gap(8).row,
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
              Gap(8).row,
              CircleAvatar(backgroundColor: Color(0xFFB5B5B5), radius: 4),
            ],
          ),
          Gap(16.h),
          Row(
            children: [
              Text(
                'تسوق حسب التصنيف',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'عرض الكل',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF314158),
                  ),
                ),
              ),
            ],
          ),
          Gap(15.h),
          Gap(16.h),
          Row(
            children: [
              Text(
                'أحدث المنتجات',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                child: Text(
                  'عرض المزيد',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF314158),
                  ),
                ),
              ),
            ],
          ),
          ShopByCategory(),
          Gap(17.h),
          LatestProducts(),
          Gap(122.h),
        ],
      ),
    );
  }
}
