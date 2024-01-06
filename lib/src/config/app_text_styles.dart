import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyles {
  AppTextStyles._();

  static const TextStyle _text = TextStyle(fontFamily: 'Poppins');

  static final TextStyle _text700 = _text.copyWith(fontWeight: FontWeight.w700);

  static final TextStyle headline = _text700.copyWith(fontSize: 24.0.sp);
  static final TextStyle subtitle1 = _text700.copyWith(fontSize: 14.0.sp);
  static final TextStyle subtitle2 = _text700.copyWith(fontSize: 12.0.sp);
  static final TextStyle subtitle3 = _text700.copyWith(fontSize: 10.0.sp);

  static final TextStyle _text400 = _text.copyWith(fontWeight: FontWeight.w400);

  static final TextStyle body1 = _text400.copyWith(fontSize: 14.0.sp);
  static final TextStyle body2 = _text400.copyWith(fontSize: 12.0.sp);
  static final TextStyle body3 = _text400.copyWith(fontSize: 10.0.sp);
  static final TextStyle caption = _text400.copyWith(fontSize: 8.0.sp);
}
