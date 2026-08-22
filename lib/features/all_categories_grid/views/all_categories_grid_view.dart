import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import '../widgets/item_all_categories_grid_body.dart';

class AllCategoriesGridView extends StatefulWidget {
  const AllCategoriesGridView({super.key});

  @override
  State<AllCategoriesGridView> createState() => _AllCategoriesGridViewState();
}

class _AllCategoriesGridViewState extends State<AllCategoriesGridView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(appBarTitle: 'كل التصنيفات',fontSize: 16,),
      // grid view was best one
      body: ItemAllCategoriesGridBody(),
    );
  }
}
