import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/home/presentation/views/widgets/home_body_view.dart';

import '../../../../core/utils/app_text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            //TODO custom widget
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFECECEC), width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                  ),
                ),
                PositionedDirectional(
                  end: 14.5,
                  top: 14.5,
                  child: SvgPicture.asset(
                    'assets/home_icons/waheed_notification.svg',
                  ),
                ),
                PositionedDirectional(
                  start: 12.5,
                  top: 12.5,
                  child: CircleAvatar(
                    backgroundColor: Color(0xFFFF3A2F),
                    radius: 4,
                  ),
                ),
              ],
            ),
            Gap(4.w),
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFECECEC), width: 1),
                  ),
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.white,
                  ),
                ),
                PositionedDirectional(
                  end: 14.5,
                  top: 14.5,
                  child: SvgPicture.asset(
                    'assets/home_icons/favourites.svg',
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'WAHEED HASSAN',
                  style: AppTextStyles.appBarTitle(context),
                ),
                Text('MEN’S SUITS', style: AppTextStyles.appBarTitle(context)),
              ],
            ),
            Gap(3.5.w),
            SvgPicture.asset(
              'assets/app_logo/app_logo.svg',
              height: 32,
              width: 32,
            ),
          ],
        ),
      ),
      body: HomeBodyView(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/nav_bar_icons/home_nav_bar_icon.svg',
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/nav_bar_icons/order_nav_bar_icon.svg',
            ),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/nav_bar_icons/cart_nav_bar_icon.svg',
            ),
            label: 'العربة',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/nav_bar_icons/acc_nav_bar_icon.svg'),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
