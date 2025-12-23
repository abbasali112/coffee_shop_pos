import 'package:flutter/material.dart';
import 'colors.dart';

class AppTextStyles {
  static const TextStyle heading = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
  );

  static const TextStyle subHeading = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );

  static const TextStyle bodyText = TextStyle(
    fontSize: 16,
    color: AppColors.white,
  );

  static const TextStyle smallText = TextStyle(
    fontSize: 14,
    color: AppColors.greyText,
  );

  static const TextStyle buttonText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.greyText,
  );
}