import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'item_all_categories_grid_view.dart';

class ItemAllCategoriesGridBody extends StatefulWidget {
  const ItemAllCategoriesGridBody({super.key});

  @override
  State<ItemAllCategoriesGridBody> createState() =>
      _ItemAllCategoriesGridBodyState();
}

class _ItemAllCategoriesGridBodyState extends State<ItemAllCategoriesGridBody> {
  List<String> iconCategoriesShop = [
    'assets/shared/suits.svg',
    'assets/shared/shirts.svg',
    'assets/shared/accessories.svg',
    'assets/shared/shoes.svg',
  ];
  List<String> categoriesName = ['بدلات', 'قمصان', 'اكسسوارات', 'أحذية'];
  List<double> paddingIcon = [8, 8, 12, 8];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Gap(32.h),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 2.1294117647,
              ),
              itemCount: 4,
              itemBuilder: (context, index) => ItemAllCategoriesGridView(
                iconCategory: iconCategoriesShop[index],
                category: categoriesName[index],
                paddingIcon: paddingIcon[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
