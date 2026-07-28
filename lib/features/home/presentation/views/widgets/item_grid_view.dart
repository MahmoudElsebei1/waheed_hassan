import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ItemGridView extends StatefulWidget {
  late final String imagePath;
  ItemGridView({super.key,required this.imagePath});

  @override
  State<ItemGridView> createState() => _ItemGridViewState();
}

class _ItemGridViewState extends State<ItemGridView> {
  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.network(widget.imagePath),
              PositionedDirectional(
                end: 8,
                top: 8,
                child: CircleAvatar(radius: 16, backgroundColor: Colors.white),
              ),
              PositionedDirectional(
                end: 14,
                top: 14,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavourite = !isFavourite;
                    }
                    );
                  },
                  child: isFavourite
                  //todo icons issue when clicked
                      ? SvgPicture.asset('assets/shared/is_favourite.svg',)
                      : SvgPicture.asset('assets/shared/favourites.svg'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/home_icons/rating.svg'),
                    Gap(5.w),
                    Text('4.9'),
                    Gap(4.w),
                    Text('(128)'),
                  ],
                ),
                Text(
                  'بدلة كلاسيكية سوداء',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),
                ),
                Text('صوف إيطالي فاخر'),
                Row(
                  children: [
                    Text('2,450'),
                    Text(' ج.م'),
                    Spacer(),
                    InkWell(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(21),
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Color(0xFFE5E7EB)),
                        ),
                        child: Text('إيجار'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
