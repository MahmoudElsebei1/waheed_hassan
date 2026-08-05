import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

import 'item_latest_products.dart';

class LatestProducts extends StatefulWidget {

  const LatestProducts({super.key});

  @override
  State<LatestProducts> createState() => _LatestProductsState();
}

class _LatestProductsState extends State<LatestProducts> {
  List<String> images = [
    'https://imgs.search.brave.com/_Xz47PlMWFx2p1ULyqRsFHwDeHLURPQA-Z0l5wo8naQ/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9tZWRp/YS5maWxmYW4uY29t/L05ld3NQaWNzL0Zp/bGZhbk5ldy9sYXJn/ZS8yNTYyNTZfMC5q/cGc',
    'https://imgs.search.brave.com/IqyO57JqtzbzkRrQjSOdeA6wjC8Hr7rXJj3Niby9oL4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L2ZyZWUtcGhvdG8v/YmVhcmRlZC1tYW4t/c3VpdC1wb3Npbmct/d2l0aC1jcm9zc2Vk/LWFybXNfMTcxMzM3/LTE4NTkyLmpwZz9z/ZW10PWFpc190ZXN0/X2Imdz03NDAmcT04/MA',
    'https://imgs.search.brave.com/hRYgryk27Mwj4tdCv43ZevFh3Q9j1yDHLVXybWEgVu4/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L2ZyZWUtcGhvdG8v/YnVzaW5lc3MtY29u/Y2VwdC1oYW5kc29t/ZS1tYW4taGFwcHkt/c21pbGUteW91bmct/aGFuZHNvbWUtZ3V5/LXNtYXJ0LXN1aXQt/cG9zaW5nLWlzb2xh/dGVkLWdyZXktYmFj/a2dyb3VuZF8xMjU4/LTgwMTczLmpwZz9n/YT1HQTEuMS4zMjc1/NzExNDguMTc4MzYw/MDU5OCZzZW10PWFp/c19oeWJyaWQmdz03/NDAmcT04MA',
    'https://imgs.search.brave.com/TZ8WYKpMGEorWgx3vEuykXoe7o3e-THxWhOfEt8Lm2s/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly9pbWcu/bWFnbmlmaWMuY29t/L3ByZW1pdW0tcGhv/dG8vY29uZmlkZW50/LWhpcy1zdHlsZS1o/YW5kc29tZS15b3Vu/Zy1tYW4tZnVsbC1z/dWl0LWFkanVzdGlu/Zy1zbGVldmUtbG9v/a2luZy1jYW1lcmEt/d2hpbGUtc3RhbmRp/bmctYWdhaW5zdC13/aGl0ZS1iYWNrZ3Jv/dW5kXzQyNTkwNC02/MzU1LmpwZz9zZW10/PWFpc190ZXN0X2Im/dz03NDAmcT04MA',
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 0.7,
      ),
      itemBuilder: (context, index) =>
          ItemLatestProducts(imagePath: images[index]),
    );
  }
}
