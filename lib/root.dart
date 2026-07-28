import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/home/presentation/views/home_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int selectedIndex=0;
  final PageController controller = PageController();
  List<Widget> screens = [HomeView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        children: screens,
        onPageChanged: (v) {
          setState(() {
            selectedIndex=v;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: InkWell(
              onTap: () {
                setState(() {
                  controller.jumpToPage(selectedIndex);
                });
              },
              child: SvgPicture.asset(
                'assets/nav_bar_icons/home_nav_bar_icon.svg',
              ),
            ),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/nav_bar_icons/order_nav_bar_icon.svg',
            ),
            label: 'طلباتي',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/nav_bar_icons/cart_nav_bar_icon.svg',
            ),
            label: 'العربة',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/nav_bar_icons/acc_nav_bar_icon.svg'),
            label: 'حسابي',
          ),
        ],
      ),
    );
  }
}
