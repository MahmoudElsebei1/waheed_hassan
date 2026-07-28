import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
                start: 14.5,
                top: 13.5,
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
                  'assets/shared/favourites.svg',
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
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text('MEN’S SUITS', style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w800,
              )),
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
    );
  }
  @override
  Size get preferredSize=> const Size.fromHeight(kToolbarHeight);
}
