import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';
import 'package:waheed_hassan/features/filter_by_date/views/widgets/item_grid_view.dart';

import '../../../../core/ui/custom_btn_with_only_title.dart';

class FilterByDateView extends StatefulWidget {
  const FilterByDateView({super.key});

  @override
  State<FilterByDateView> createState() => _FilterByDateViewState();
}

class _FilterByDateViewState extends State<FilterByDateView> {
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
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 34),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 40,
            height: 4,
            margin: const EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: Color(0xFFD9D9D9),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Text(
                  'تصفية حسب التاريخ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                Positioned(
                  right: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset('assets/shared/clear.svg'),
                  ),
                ),
              ],
            ),
          ),
          Gap(24.h),
          GridView.builder(
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
                textColor: selectedIndex == index
                    ? Colors.white
                    : Color(0xFF334155),
              ),
            ),
          ),
          Gap(23.h),
          // todo الافضل بدل الرص دا اعمل custom btn لكل زرار
          CustomBtnWithOnlyTitle(
            textButton: 'تطبيق التصفية',
            btnColor: Color(0xFF000000),
            colorOfTextBtn: Colors.white,
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
