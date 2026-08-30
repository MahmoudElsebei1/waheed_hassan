import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/order_confirmed/widgets/orders_data.dart';
import 'package:waheed_hassan/shared/custom_button_with_icon_and_txt.dart';

class OrderConfirmedBody extends StatelessWidget {
  const OrderConfirmedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: -80,
          right: -80,
          child: Container(
            height: 256,
            width: 256,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFe9ecf4),
            ),
          ),
        ),
        Positioned(
          bottom: -70,
          left: -70,
          child: Container(
            height: 256,
            width: 256,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xFFfaf7f0),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Gap(170),
              Center(
                child: Stack(
                  children: [
                    Container(
                      height: 128,
                      width: 128,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          colors: [Color(0xFF455A64), Colors.black],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      top: 37,
                      start: 37,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 26.665,
                        child: SvgPicture.asset(
                          'assets/my_orders_assets/done.svg',
                          color: Color(0xFF455A64),
                          height: 20,
                        ),
                      ),
                    ),
                    PositionedDirectional(
                      bottom: 0,
                      end: 0,
                      child: CircleAvatar(
                        backgroundColor: Color(0xFFC9A961),
                        radius: 20,
                        child: SvgPicture.asset(
                          'assets/my_orders_assets/done.svg',
                          color: Colors.white,
                          height: 12.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Gap(24),
              Text(
                'تم تأكيد طلبك بنجاح',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF0F172B),
                ),
              ),
              Gap(8),
              Text(
                'شكراً لاختيارك متجرنا. سنرسل لك إشعاراً عند شحن طلبك',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFF62748E),
                ),
              ),
              Gap(32),
              OrderData(),
              Gap(124.84),
              CustomButtonWithIconAndTxt(
                img: 'assets/product_details/deliver.svg',
                txt: 'تتبع الطلب',
              ),
              Gap(8),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 120),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: Color(0xFF1E3A8A).withValues(alpha: 0.19),
                    ),
                  ),
                  child: Text(
                    'العودة للرئيسية',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
