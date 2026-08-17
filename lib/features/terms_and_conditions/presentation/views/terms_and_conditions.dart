import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(
        appBarTitle: 'الشروط والاحكام',
        fontSize: 18,
      ),
    );
  }
}
