import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class DeliveryAddressDescription extends StatelessWidget {
  const DeliveryAddressDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          border: Border.all(color: Color(0xFFEAEAEA)),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF000000).withValues(alpha: 0.06),
                borderRadius: BorderRadius.circular(14),
              ),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.fromLTRB(12, 12, 16, 48),
              child: SvgPicture.asset('assets/shared/home_address.svg'),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'المنزل',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF0A0A0A),
                        ),
                      ),
                      Gap(12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                          color: Color(0xFF6A7282).withValues(alpha: 0.2),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                          horizontal: 8,
                        ),
                        child: Text(
                          'افتراضي',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(8),
                  Text(
                    'محمود السباعي • +15 55 123 4567',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF45556C),
                    ),
                  ),
                  Gap(4),
                  Text(
                    'المنصورة، حي الزعفران',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF62748E),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
