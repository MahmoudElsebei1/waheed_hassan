import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBarWithCartIcons extends StatelessWidget implements PreferredSizeWidget {
  final String appBarTitle;

  const CustomAppBarWithCartIcons({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      centerTitle: true,
      backgroundColor: Colors.white,
      leadingWidth: 68,
      leading: Padding(
        padding: const EdgeInsets.only(right: 16.0,),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFFECECEC), width: 1),
                ),
                child: CircleAvatar(radius: 24, backgroundColor: Colors.white),
              ),
              PositionedDirectional(
                end: 23,
                top: 15,
                child: SvgPicture.asset('assets/shared/back_icon.svg'),
              ),
            ],
          ),
        ),
      ),
      title: Text(
        appBarTitle,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Stack(
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
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
