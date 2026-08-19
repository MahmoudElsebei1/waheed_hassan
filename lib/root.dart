import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/my_account/views/my_account_view.dart';
import 'package:waheed_hassan/features/my_orders/views/my_orders_view.dart';
import 'package:waheed_hassan/features/shopping_cart/views/shopping_cart_contents.dart';

import 'features/home/views/home_view.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentScreen = 0;
  late final PageController controller;

  late List<Widget> screens;

  @override
  void initState() {
    screens = [
      HomeView(),
      MyOrdersView(),
      ShoppingCartContentsView(),
      MyAccountView(),
    ];
    controller = PageController(initialPage: currentScreen);
    super.initState();
  }

  void _onTap(int index) {
    setState(() {
      currentScreen = index;
      controller.animateToPage(
        index,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  Widget _navIcon(String path, int index) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(
        currentScreen == index
            ? const Color(0xFF292D32)
            : const Color(0xFF919191),
        BlendMode.srcIn,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        children: screens,
        onPageChanged: (v) {
          setState(() {
            currentScreen = v;
          });
        },
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xFFEEEEEE)),
          ),
          child: SizedBox(
            height: 96,
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: currentScreen,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF292D32),
              unselectedItemColor: Color(0xFF919191),
              selectedLabelStyle: TextStyle(color: Color(0xFF292D32)),
              unselectedLabelStyle: TextStyle(color: Color(0xFF919191)),
              onTap: _onTap,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/nav_bar_icons/home_nav_bar_icon.svg',
                    color: currentScreen == 0
                        ? Color(0xFF292D32)
                        : Color(0xFF919191),
                  ),
                  label: 'الرئيسية',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/nav_bar_icons/order_nav_bar_icon.svg',
                    color: currentScreen == 1
                        ? Color(0xFF292D32)
                        : Color(0xFF919191),
                  ),
                  label: 'طلباتي',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/nav_bar_icons/cart_nav_bar_icon.svg',
                    color: currentScreen == 2
                        ? Color(0xFF292D32)
                        : Color(0xFF919191),
                  ),
                  label: 'العربة',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    'assets/nav_bar_icons/acc_nav_bar_icon.svg',
                    color: currentScreen == 3
                        ? Color(0xFF292D32)
                        : Color(0xFF919191),
                  ),
                  label: 'حسابي',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
