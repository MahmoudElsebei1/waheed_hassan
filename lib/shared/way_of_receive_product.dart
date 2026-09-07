import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class WayOfReceiveProduct extends StatelessWidget {
  const WayOfReceiveProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset(
              'assets/shared/deliver_order.svg',
              width: 20,
              height: 20,
              color: Color(0xFF314158),
            ),
            Gap(8),
            Text(
              'طريقة الاستلام',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF314158),
              ),
            ),
            Gap(16),
          ],
        ),
        Gap(16),
        Row(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(8, 8, 16, 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Colors.white),
                ),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Color(0xFFF1F5F9),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SvgPicture.asset(
                            'assets/shared/take_from_shop.svg',
                          ),
                        ),
                        Gap(12),
                        Text(
                          'استلام من الفرع',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF0A0A0A),
                          ),
                        ),
                        Gap(3),
                        Text(
                          'جاهز خلال ٣ أيام',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF62748E),
                          ),
                        ),
                      ],
                    ),
                    PositionedDirectional(
                      end: 2,
                      top: 2,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F4EB),
                          borderRadius: BorderRadius.circular(99)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                        child: Text(
                          'مجاناً',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFC9A961),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Gap(16),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(8, 8, 16, 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                  border: Border.all(color: Color(0xFF314158)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF314158), Color(0xFF6A8CBE)],
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: SvgPicture.asset(
                        'assets/product_details/deliver.svg',
                        color: Colors.white,
                      ),
                    ),
                    Gap(12),
                    Text(
                      'توصيل للمنزل',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A0A0A),
                      ),
                    ),
                    Gap(3),
                    Text(
                      '٣–٧ أيام',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF62748E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
