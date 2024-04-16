import 'package:flutter/material.dart';
import 'package:mad_soft/utils/colors.dart';

abstract class AppTextStyle {
  static const TextStyle customTextSmall = TextStyle(
    color: AppColors.textSecond,
    fontSize: 11,
    letterSpacing: 0.5,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );
  static const TextStyle customTextMedium = TextStyle(
    color: AppColors.textMain,
    fontSize: 14,
    letterSpacing: 0.25,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );
}
