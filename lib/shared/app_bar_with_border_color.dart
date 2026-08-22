import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarWithBorderColor extends StatelessWidget
    implements PreferredSizeWidget {
  String appBarTitle;

  AppBarWithBorderColor({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      shape: Border.all(color: Color(0xFFF6F6F6), width: 1),
      leading: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
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
                end: 20,
                top: 16,
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
