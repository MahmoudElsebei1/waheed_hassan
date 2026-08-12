import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarWithTitleAndOneIcon extends StatelessWidget implements PreferredSizeWidget{
  final String appBarTitle;
  const CustomAppBarWithTitleAndOneIcon({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
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
                end: 21,
                top: 15,
                child: SvgPicture.asset('assets/shared/back_icon.svg'),
              ),
            ],
          ),
          Gap(80.5.w),
          Text(
            appBarTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
  @override
  Size get preferredSize=> const Size.fromHeight(kToolbarHeight);
}
