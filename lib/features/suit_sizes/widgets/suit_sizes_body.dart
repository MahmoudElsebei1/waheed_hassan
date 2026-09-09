import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waheed_hassan/features/suit_sizes/widgets/customize_size_section.dart';
import 'package:waheed_hassan/features/suit_sizes/widgets/upper_section.dart';

class SuitSizesBody extends StatefulWidget {
  const SuitSizesBody({super.key});

  @override
  State<SuitSizesBody> createState() => _SuitSizesBodyState();
}

class _SuitSizesBodyState extends State<SuitSizesBody> {
  List<String> sizeOfSuits = ['S', 'M', 'L', 'XL', 'XXL'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(
          children: [
            Gap(2),
            UpperSection(),
            Gap(2),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/shared/step_icon.svg'),
                      Gap(4),
                      Text(
                        'الخطوة ١ من ٤',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFC9A961),
                        ),
                      ),
                    ],
                  ),
                  Gap(4),
                  Text(
                    'الجاكيت',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                  Gap(4),
                  Text(
                    'قياسات الجاكيت العلوية',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF62748E),
                    ),
                  ),
                  Gap(24),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFEAEAEA)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14),
                          child: Container(
                            height: 96,
                            width: 96,
                            decoration: BoxDecoration(color: Color(0xFFf2f3f7)),
                            child: SvgPicture.asset(
                              'assets/shared/t-shirt.svg',
                            ),
                          ),
                        ),
                        Gap(16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/shared/size_evidence.svg',
                                ),
                                Gap(7.99),
                                Text(
                                  'دليل القياس',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFFC9A961),
                                  ),
                                ),
                              ],
                            ),
                            Gap(4),
                            Text(
                              'قِس بدقة فوق ملابسك العادية وأبقِ شريط\nالقياس مستوياً وغير مشدود.',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF45556C),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFEAEAEA)),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'اختر مقاساً جاهزاً',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF62748E),
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.fromLTRB(
                                7.99,
                                0.72,
                                7.99,
                                3.26,
                              ),
                              decoration: BoxDecoration(
                                color: Color(0xFFf8f4eb),
                                borderRadius: BorderRadius.circular(42770700),
                              ),

                              child: Text(
                                'سريع',
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFFC9A961),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ...List.generate(
                              5,
                              (index) => Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 11,
                                  horizontal: 22,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF8FAFC),
                                  borderRadius: BorderRadius.circular(14),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.08),
                                      offset: const Offset(0, 1),
                                      blurRadius: 2,
                                      spreadRadius: 0,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  sizeOfSuits[index],
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF334155),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Gap(16),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Color(0xFFEAEAEA)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'تخصيص المقاس',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF62748E),
                          ),
                        ),
                        Gap(24),
                        CustomizeSizeSection(
                          sizePart: 'تخصيص المقاس',
                          partRange: 'حول أوسع جزء من الصدر',
                          size: 94,
                        ),
                        Gap(16),
                        CustomizeSizeSection(
                          sizePart: 'عرض الكتفين',
                          partRange: 'من كتف إلى كتف',
                          size: 44,
                        ),
                        Gap(16),
                        CustomizeSizeSection(
                          sizePart: 'طول الكم',
                          partRange: 'من الكتف إلى المعصم',
                          size: 62,
                        ),
                        Gap(16),
                        CustomizeSizeSection(
                          sizePart: 'طول الجاكيت',
                          partRange: 'من الرقبة إلى الحافة السفلية',
                          size: 70,
                        ),
                      ],
                    ),
                  ),
                  Gap(110),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
