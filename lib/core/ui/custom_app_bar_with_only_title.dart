import 'package:flutter/material.dart';

class CustomAppBarWithOnlyTitle extends StatelessWidget implements PreferredSizeWidget{
  final String appBarTitle;
  const CustomAppBarWithOnlyTitle({super.key, required this.appBarTitle});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: Colors.white,
      title: Text(
        appBarTitle,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
      ),
      centerTitle: true,
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
