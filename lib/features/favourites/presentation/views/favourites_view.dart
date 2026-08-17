import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import 'package:waheed_hassan/core/ui/products.dart';

class FavouritesView extends StatelessWidget {
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(appBarTitle: 'المفضلة',fontSize: 18,),
      body: Column(
        children: <Widget>[
          Gap(32.h),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Products(),
          ),
        ],
      ),
    );
  }
}
