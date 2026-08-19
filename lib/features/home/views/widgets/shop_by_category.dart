import 'package:flutter/material.dart';
import 'package:waheed_hassan/features/all_products/views/all_products_view.dart';

import 'item_categories_shopping.dart';

class ShopByCategory extends StatefulWidget {
  const ShopByCategory({super.key});

  @override
  State<ShopByCategory> createState() => _ShopByCategoryState();
}

class _ShopByCategoryState extends State<ShopByCategory> {
  List<String> iconCategoryShop = [
    'assets/shared/suits.svg',
    'assets/shared/shirts.svg',
    //todo issue
    'assets/shared/accessories.svg',
    'assets/shared/shoes.svg',
  ];
  List<String> itemCategoryName = ['بدلات', 'قمصان', 'اكسسوارات', 'أحذية'];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 3.2321428571,
      ),
      itemBuilder: (context, index) => ItemCategoriesShopping(
        iconCategoriesShop: iconCategoryShop[index],
        categoriesName: itemCategoryName[index],
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AllProductsView(),));
        },
      ),
    );
  }
}
