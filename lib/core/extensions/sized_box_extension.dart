import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

extension SizedBoxExtension on num {
  SizedBox vertical() {
    return SizedBox(height: toDouble().h);
  }

  SizedBox horizontal() {
    return SizedBox(height: toDouble().w);
  }
}
