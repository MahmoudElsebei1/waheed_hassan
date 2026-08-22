import 'package:flutter/material.dart';

import 'item_grid_view.dart';

class FilterForWhich extends StatefulWidget {
  const FilterForWhich({super.key});

  @override
  State<FilterForWhich> createState() => _FilterForWhichState();
}

class _FilterForWhichState extends State<FilterForWhich> {
  List<String> filterByDate = [
    'كل الفترات',
    'آخر ٧ أيام',
    'آخر ٣٠ يوم',
    'آخر ٣ شهور',
    'هذه السنة',
    'نطاق مخصص',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: 6,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3.6875,
        mainAxisSpacing: 12,
        crossAxisSpacing: 16,
      ),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: ItemGridView(
          filterByDate: filterByDate[index],
          containerColor: selectedIndex == index
              ? Colors.black
              : Color(0xFFF6F6F6),
          textColor: selectedIndex == index ? Colors.white : Color(0xFF334155),
        ),
      ),
    );
  }
}
