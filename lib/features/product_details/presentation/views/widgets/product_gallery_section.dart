import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:flutter_svg/svg.dart';

class ProductGallerySection extends StatelessWidget {
  const ProductGallerySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Gap(24.h),
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              children: [
                Image.network(
                  'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
                  height: 470.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                PositionedDirectional(
                  top: 8,
                  start: 8,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 6, 12, 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFC9A961),
                    ),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/product_details/made_to_measure.svg',
                        ),
                        Gap(4.w),
                        Text(
                          'تفصيل علي المقاس',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(16.h),
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 80,
                  width: 82,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 1,
                        mainAxisSpacing: 1,
                        mainAxisExtent: 40,
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Image.network(
                          'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
                          width: double.infinity,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                ),
              ),
              Gap(8.w),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
                    height: 80,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(8.w),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
                    height: 80,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Gap(8.w),
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    'https://imgs.search.brave.com/HQ13gcIfpdxx5G_gxRQ28EUn_rZnZr6N0TohovVHvmU/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWdj/ZG4uc3RhYmxlZGlm/ZnVzaW9ud2ViLmNv/bS8yMDI0LzQvMTkv/YmExZjY1MzEtODg4/MC00MmIwLWI5NmEt/YjY0NGJiMmQ2NDA3/LmpwZw',
                    height: 80,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
