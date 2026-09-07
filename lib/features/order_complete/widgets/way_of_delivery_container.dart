import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';

class WayOfDeliveryContainer extends StatelessWidget {
  final bool isSelected;
  final String deliveryWay;
  final String duration;
  final String price;

  WayOfDeliveryContainer({
    super.key,
    required this.isSelected,
    required this.deliveryWay,
    required this.duration,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: isSelected?0:1,
      borderRadius: BorderRadius.circular(24),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.91, horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: isSelected ? Colors.black : Colors.transparent,
            width: isSelected?1.6:1,
          ),
        ),
        child: Row(
          children: [
            Radio(value: '', activeColor: Colors.white),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deliveryWay,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF0A0A0A),
                  ),
                ),
                Gap(2),
                Text(
                  duration,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF62748E),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
