import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarWithTitleAndOneIcon extends StatelessWidget
    implements PreferredSizeWidget {
  final String appBarTitle;
  final double fontSize;

  const CustomAppBarWithTitleAndOneIcon({
    super.key,
    required this.appBarTitle,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      //todo انا عامل مسافة اقل م اللي في التصميم
      centerTitle: true,
      backgroundColor: Colors.white,
      leading: Row(
        children: [
          //todo مسافة قدام الicon
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFECECEC), width: 1),
                ),
                child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
              ),
              PositionedDirectional(
                end: 21,
                top: 15,
                child: SvgPicture.asset('assets/shared/back_icon.svg'),
              ),
            ],
          ),
        ],
      ),
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
