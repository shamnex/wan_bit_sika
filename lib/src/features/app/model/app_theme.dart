library app_theme;

import 'package:wan_bi_sika/src/constants/border_radius.dart';
import 'package:wan_bi_sika/src/constants/colors.dart';
import 'package:wan_bi_sika/src/constants/paddings.dart';
import 'package:flutter/material.dart';

enum AppTheme { orange_light, organge_dark }

class AppInputTheme {
  const AppInputTheme._();

  static final outlineInputTheme = InputDecoration(
    hasFloatingPlaceholder: true,
    alignLabelWithHint: true,
    contentPadding: AppPaddings.bodyH.copyWith(top: 16, bottom: 16),
    focusedBorder: OutlineInputBorder(
      borderRadius: AppBorderRadius.large_all,
      borderSide: BorderSide(color: Colors.white, width: 2),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white70, width: 1),
      borderRadius: AppBorderRadius.large_all,
    ),
    disabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white54, width: 1),
      borderRadius: AppBorderRadius.large_all,
    ),
    errorBorder:
        OutlineInputBorder(borderRadius: AppBorderRadius.large_all, borderSide: BorderSide(color: AppColors.error)),
    border: OutlineInputBorder(
      borderRadius: AppBorderRadius.large_all,
    ),
    filled: false,
    fillColor: AppColors.primary.shade50.withOpacity(.5),
    errorStyle: TextStyle(height: 2),
    hintStyle: TextStyle(color: Colors.white70, fontWeight: FontWeight.w100),
  );
}

final appThemeData = {
  AppTheme.orange_light: ThemeData(
    fontFamily: 'Raleway',
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.primary,
    ),
    hintColor: AppColors.hint,
    indicatorColor: AppColors.primary,
    iconTheme: IconThemeData(color: AppColors.primary),
    backgroundColor: AppColors.background,
    inputDecorationTheme: InputDecorationTheme(
      hasFloatingPlaceholder: true,
      alignLabelWithHint: true,
      contentPadding: AppPaddings.bodyH.copyWith(top: 16, bottom: 16),
      focusedBorder: OutlineInputBorder(
        borderRadius: AppBorderRadius.large_all,
        borderSide: BorderSide(
          color: AppColors.primary.shade100.withOpacity(.8),
          width: 1,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary.shade50.withOpacity(.1)),
        borderRadius: AppBorderRadius.large_all,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primary.shade200.withOpacity(.1)),
        borderRadius: AppBorderRadius.large_all,
      ),
      errorBorder: OutlineInputBorder(
          borderRadius: AppBorderRadius.large_all,
          borderSide: BorderSide(
            color: AppColors.error,
          )),
      border: OutlineInputBorder(
        borderRadius: AppBorderRadius.large_all,
      ),
      filled: true,
      fillColor: AppColors.primary.shade50.withOpacity(.5),
      errorStyle: TextStyle(height: 2),
      hintStyle: TextStyle(color: AppColors.hint, fontWeight: FontWeight.w100),
    ),
  ),
  //===================
  AppTheme.organge_dark: ThemeData(
    fontFamily: 'Raleway',
    brightness: Brightness.dark,
    primaryColor: AppColors.primary[700],
    backgroundColor: AppColors.backgroundDark,
  ),
};
