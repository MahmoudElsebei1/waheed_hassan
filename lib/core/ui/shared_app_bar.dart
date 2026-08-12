import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;
  const SharedAppBar({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
                top: 16,
                child: SvgPicture.asset('assets/shared/back_icon.svg'),
              ),
            ],
          ),
          // Gap(87.5.w),
          Text(
            appBarTitle,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
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
                end: 12,
                top: 13,
                child: SvgPicture.asset('assets/shared/shopping_cart.svg'),
              ),
              PositionedDirectional(
                end: 0,
                top: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 8,
                  child: Text(
                    '2',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
