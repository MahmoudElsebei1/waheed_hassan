import 'package:flutter/material.dart';
import 'package:waheed_hassan/core/ui/custom_app_bar_with_title_and_one_icon.dart';
import 'package:waheed_hassan/features/all_categories_grid/presentation/views/widgets/item_all_categories_grid_body.dart';

class AllCategoriesGrid extends StatefulWidget {
  const AllCategoriesGrid({super.key});

  @override
  State<AllCategoriesGrid> createState() => _AllCategoriesGridState();
}

class _AllCategoriesGridState extends State<AllCategoriesGrid> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarWithTitleAndOneIcon(appBarTitle: 'كل التصنيفات',fontSize: 16,),
      // grid view was best one
      body: ItemAllCategoriesGridBody(),
    );
  }
}
