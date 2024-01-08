import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppShadows {
  AppShadows._();

  static final BoxShadow dropShadow2dp = BoxShadow(
    color: AppColors.dark.withOpacity(0.2),
    blurRadius: 3.0,
    spreadRadius: 2.0,
    blurStyle: BlurStyle.outer,
  );

  static final BoxShadow dropShadow6dp = BoxShadow(
    color: AppColors.dark.withOpacity(0.2),
    blurRadius: 12.0,
    spreadRadius: 6.0,
    blurStyle: BlurStyle.outer,
  );

  static final BoxShadow innerShadow2dp = BoxShadow(
      color: AppColors.dark.withOpacity(0.2),
      blurRadius: 3.0,
      spreadRadius: 2.0,
      blurStyle: BlurStyle.inner);
}
