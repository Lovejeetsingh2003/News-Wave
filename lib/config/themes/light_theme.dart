import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_wave/config/themes/theme_config.dart';

import '../colors/colors_class.dart';


ThemeData lightTheme = ThemeData.light().copyWith(
  appBarTheme: AppBarTheme(
      systemOverlayStyle: const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
      iconTheme: IconThemeData(
        color: ColorClass.black,
      )),
  colorScheme: ThemeData.light().colorScheme.copyWith(
      secondary: const Color(0xffa1a1a1),
      primary: const Color(0xff0F0425),
      onPrimary: const Color(0xff9694B8),
      outline: const Color(0xfff0f0f0),
      onBackground: const Color(0xfff6f8f8),
      background: const Color(0xffDCE8E8),
      primaryContainer: ColorClass.white,
      onPrimaryContainer: const Color(0xffd8d8da)),
  textSelectionTheme: TextSelectionThemeData(cursorColor: ColorClass.black),
  scaffoldBackgroundColor: ColorClass.white,
  progressIndicatorTheme: const ProgressIndicatorThemeData(linearTrackColor: Color(0xffECEAEA), color: ThemeConfig.primaryColor),
  primaryColor: ThemeConfig.primaryColor,
  radioTheme: RadioThemeData(
    fillColor: MaterialStateColor.resolveWith(
          (states) => ColorClass.black.withOpacity(.4),
    ),
  ),
  textTheme: ThemeData.light().textTheme.copyWith(
    titleMedium: GoogleFonts.roboto(color: ColorClass.black),
    titleSmall: GoogleFonts.roboto(
      color: ColorClass.black.withOpacity(.5),
    ),
    displayLarge: GoogleFonts.roboto(
      color: ColorClass.black,
    ),
    displayMedium: GoogleFonts.roboto(
      color: ColorClass.black,
      fontWeight: FontWeight.w400,
    ),
    headlineMedium: GoogleFonts.roboto(
      color: ThemeConfig.textColor6B698E,
    ),
    displaySmall: GoogleFonts.roboto(
      color: ColorClass.black,
      fontWeight: FontWeight.w400,
    ),
    bodyMedium: GoogleFonts.roboto(
      color: ColorClass.black,
    ),
  ),
);