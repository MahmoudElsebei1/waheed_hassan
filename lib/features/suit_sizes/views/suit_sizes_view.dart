import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/suit_sizes/widgets/suit_sizes_body.dart';
import 'package:waheed_hassan/shared/app_bar_with_border_color.dart';

class SuitSizesView extends StatelessWidget {
  const SuitSizesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWithBorderColor(appBarTitle: 'قياسات البدلة'),
      body: SuitSizesBody(),
      bottomSheet: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(color: Color(0xFFEAEAEA))
          )
        ),
        padding: const EdgeInsets.all(16),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 17),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'التالي',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              Gap(10),
              SvgPicture.asset('assets/shared/next.svg'),
            ],
          ),
        ),
      ),
    );
  }
}
