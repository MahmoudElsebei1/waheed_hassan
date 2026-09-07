import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/svg.dart';

class WayOfPayment extends StatefulWidget {
  final bool isSelected;
  final String containerIcon;
  final String paymentWay;
  final String paymentDesc;
  Function()? onTap;

   WayOfPayment({
    super.key,
    required this.paymentWay,
    required this.paymentDesc,
    required this.isSelected,
    required this.containerIcon,
    this.onTap
  });

  @override
  State<WayOfPayment> createState() => _WayOfPaymentState();
}

class _WayOfPaymentState extends State<WayOfPayment> {
  String groupValue = 'cash';

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: widget.isSelected ? 0 : 1,
      borderRadius: BorderRadius.circular(24),
      child: GestureDetector(
        onTap: widget.onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 15.91, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            border: Border.all(
              color: widget.isSelected ? Colors.black : Colors.transparent,
              width: 1.6,
            ),
          ),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: widget.isSelected
                      ? Color(0xFF292D32)
                      : Color(0xFFF1F5F9),
                  borderRadius: BorderRadius.circular(14),
                ),
                padding: EdgeInsets.all(10),
                child: SvgPicture.asset(widget.containerIcon),
              ),
              Gap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.paymentWay,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  Gap(2),
                  Text(
                    widget.paymentDesc,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF62748E),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Checkbox(
                checkColor: Colors.white,
                activeColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(99),
                ),
                value: widget.isSelected ? true : false,
                onChanged: (v) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
