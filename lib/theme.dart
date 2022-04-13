import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


double defaultMargin = 20;
String MockPhotoUrl = "https://d1muf25xaso8hp.cloudfront.net/https%3A%2F%2Fs3.amazonaws.com%2Fappforest_uf%2Ff1615988989821x722994640940732200%2Fimage.png?w=&h=&auto=compress&dpr=1&fit=max";
class AppFonts {
  static double fontSizeVerySmall = 16.sp;
  static double fontSizeSmall = 18.sp;
  static double fontSizeStandard = 20.sp;
  static double fontSizeSubtitle = 20.sp;
  static double fontSizeTitle = 23.sp;
  static double fontSizeLarge = 24.sp;
  static double fontSizeVeryLarge = 28.sp;

  static TextStyle textStyle({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    return GoogleFonts.nunitoSans(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  // Standard Text Style (Very Small, Small, Standard, Subtitle, Title)
  static TextStyle componentLabel({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color = Colors.black87,
      fontSize: fontSize ?? fontSizeStandard,
      fontStyle: fontStyle,
    );
  }

  static TextStyle appBarTitle({
    Color? color,
    double? fontSize,
    FontStyle? fontStyle,
  }) {
    return GoogleFonts.nunitoSans(
      color: color = Colors.white,
      fontSize: fontSize ?? fontSizeTitle,
      fontStyle: fontStyle,
    );
  }

  static TextStyle verySmall({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeVerySmall,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle small({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeSmall,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle standard({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeStandard,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle subtitle({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? 22.sp,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: fontStyle,
    );
  }

  static TextStyle title({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeTitle,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontStyle: fontStyle,
    );
  }

  static TextStyle large({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeLarge,
      fontWeight: fontWeight ?? FontWeight.bold,
      fontStyle: fontStyle,
    );
  }

  static TextStyle veryLarge({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeVeryLarge,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
    );
  }

  static TextStyle custom({
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    return textStyle(
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize ?? fontSizeStandard,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  // [NEW DESIGN SYSTEM]

  //// Title
  static TextStyle title1({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? 45.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  static TextStyle title2({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeTitle,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  static TextStyle title3({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeTitle,
      fontWeight: fontWeight ?? FontWeight.w800,
      fontStyle: fontStyle,
    );
  }

  //// Headline
  static TextStyle headline({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? 35.sp,
      fontWeight: fontWeight ?? FontWeight.w800,
      fontStyle: fontStyle,
    );
  }

  static TextStyle subHeadline({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? 30.sp,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  //// Body
  static TextStyle body({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? 21.sp,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  static TextStyle bodyBold({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeStandard,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  static TextStyle bodySmall(
      {Color? color,
        double? fontSize,
        FontWeight? fontWeight,
        FontStyle? fontStyle,
        double? height}) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeSmall,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: fontStyle,
      height: height,
    );
  }

  static TextStyle bodySmallBold({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeSmall,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  //// Caption
  static TextStyle caption({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    TextDecoration? decoration,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeVerySmall,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontStyle: fontStyle,
      decoration: decoration,
    );
  }

  //// Button
  static TextStyle buttonLarge({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeStandard,
      fontWeight: fontWeight ?? FontWeight.w600,
      fontStyle: fontStyle,
    );
  }

  static TextStyle buttonMedium({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeSmall,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }

  static TextStyle button({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeSmall,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontStyle: fontStyle,
    );
  }

  static TextStyle buttonSmall({
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
  }) {
    return textStyle(
      color: color,
      fontSize: fontSize ?? fontSizeVerySmall,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontStyle: fontStyle,
    );
  }
}

class ColorConst {

  // Primary
  static const Color primaryBrand = Color(0xff03c4da);
  static const Color primaryMain600 = Color(0xff0AE3FB);
  static const Color primaryMain500 = Color(0xff32E8FC);
  static const Color primaryMain400 = Color(0xff47EAFC);
  static const Color primaryMain300 = Color(0xff70EFFD);
  static const Color primaryMain200 = Color(0xffC2F8FE);

  // Secondary
  static const Color secondary = Color(0xff888888);

  // Tertiary
  static const Color tertiary = Color(0xffBABABA);

  // Neutral
  static const Color neutral10 = Color(0xffF6F8FC);
  static const Color neutral20 = Color(0xfff1f4f9);
  static const Color neutral30 = Color(0xffE2E8F0);
  static const Color neutral40 = Color(0xffCBD4E1);
  static const Color neutral50 = Color(0xff94A3B8);
  static const Color neutral60 = Color(0xff64748B);
  static const Color neutral70 = Color(0xff475569);
  static const Color neutral80 = Color(0xff27364B);
  static const Color neutral90 = Color(0xff1E2A3B);
  static const Color neutral100 = Color(0xff0F1A2A);

  // Semantic Colors
  // Success
  static const Color success10 = Color(0xffE8FCF1);
  static const Color success20 = Color(0xffA5E1BF);
  static const Color success40 = Color(0xff419E6A);
  static const Color success60 = Color(0xff00632B);
  static const Color success80 = Color(0xff00401C);
  static const Color success100 = Color(0xff002611);
  // Info
  static const Color info10 = Color(0xffD3E1FE);
  static const Color info20 = Color(0xff7EA5F8);
  static const Color info40 = Color(0xff4D82F3);
  static const Color info60 = Color(0xff2563EB);
  static const Color info80 = Color(0xff0037B3);
  static const Color info100 = Color(0xff002987);
  // Warning
  static const Color warning10 = Color(0xffFFF5D5);
  static const Color warning20 = Color(0xffFFDE81);
  static const Color warning40 = Color(0xffEFB008);
  static const Color warning60 = Color(0xff976400);
  static const Color warning80 = Color(0xff724B00);
  static const Color warning100 = Color(0xff4D2900);
  // Error
  static const Color error10 = Color(0xffFFEBEB);
  static const Color error20 = Color(0xffFC9595);
  static const Color error40 = Color(0xffD83232);
  static const Color error60 = Color(0xffB01212);
  static const Color error80 = Color(0xff8C0000);
  static const Color error100 = Color(0xff660000);

  // Uses Color
  static const Color usesColor1 = Color(0xff5E81F4);
  static const Color usesColor2 = Color(0xffFF006C);

  // Skip
  static const Color skipColor2 = Color(0xff25C196);

  // Generic
  static const Color genericColor4 = Color(0xffFFC164);

  // GRADIENT
  static const Gradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xff3C5CA9), Color(0xff587FDD)],
  );
}
