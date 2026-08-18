import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/home/views/widgets/home_app_bar.dart';
import 'package:waheed_hassan/features/home/views/widgets/home_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      //todo navigation bar
      child: Scaffold(appBar: HomeAppBar(), body:
      HomeBody(),backgroundColor: Color(0xFFF6F6F6),),
    );
  }
}
