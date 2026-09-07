import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderModelSheetSection extends StatelessWidget {
  final String textModelSheet;
  HeaderModelSheetSection({super.key, required this.textModelSheet});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Text(
            textModelSheet,
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
    );
  }
}
