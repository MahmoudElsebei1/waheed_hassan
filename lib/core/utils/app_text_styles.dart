import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class AppTextStyles {
  static TextStyle splashText(BuildContext context)=>TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w800,
  );
  static TextStyle appBarAllCategories(BuildContext context)=>TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle appBarTitle(BuildContext context)=>TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w800,
  );

  static TextStyle gridViewHomeItem(BuildContext context)=>TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  static TextStyle boldCategory(BuildContext context)=>TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );
  static TextStyle showAll(BuildContext context)=>TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Color(0xFF314158),
  );
  static TextStyle navBarLabel(BuildContext context)=>TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: Color(0xFF919191),
  );
}