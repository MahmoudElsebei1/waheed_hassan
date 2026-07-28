import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/core/utils/app_text_styles.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {

    //TODO duration
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/app_logo/app_logo.svg'),
              Gap(12.h),
              Text(
                'WAHEED HASSAN',
                style: AppTextStyles.splashTextStyle(context),
              ),
              Text(
                'MEN’S SUITS',
                style: AppTextStyles.splashTextStyle(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
