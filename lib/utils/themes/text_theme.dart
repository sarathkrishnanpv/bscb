import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  final TextStyle? appTextHeadingsDisplay1;
  final TextStyle? appTextHeadingsDisplay2;
  final TextStyle? appTextHeadingsDisplay3;
  final TextStyle? appTextHeadingsHeading1;
  final TextStyle? appTextHeadingsHeading2;
  final TextStyle? appTextHeadingsHeading3;
  final TextStyle? appTextHeadingsHeading4;
  final TextStyle? appTextBodyTextXsSemibold;
  final TextStyle? appTextBodyTextXsMedium;
  final TextStyle? appTextBodyTextXsRegular;
  final TextStyle? appTextBodyTextSmRegular;
  final TextStyle? appTextBodyTextSmMedium;
  final TextStyle? appTextBodyTextSmSemibold;
  final TextStyle? appTextBodyTextBaseBold;
  final TextStyle? appTextBodyTextBaseSemibold;
  final TextStyle? appTextBodyTextBaseMedium;
  final TextStyle? appTextBodyTextBaseRegular;
  final TextStyle? appTextBodyTextLgBold;
  final TextStyle? appTextBodyTextLgSemibold;
  final TextStyle? appTextBodyTextLgMedium;
  final TextStyle? appTextBodyTextLgRegular;
  final TextStyle? appTextBodyTextXlBold;
  final TextStyle? appTextBodyTextXlSemibold;
  final TextStyle? appTextBodyTextXlMedium;
  final TextStyle? appTextBodyTextXlRegular;

  const AppTextTheme({
    this.appTextHeadingsDisplay1,
    this.appTextHeadingsDisplay2,
    this.appTextHeadingsDisplay3,
    this.appTextHeadingsHeading1,
    this.appTextHeadingsHeading2,
    this.appTextHeadingsHeading3,
    this.appTextHeadingsHeading4,
    this.appTextBodyTextXsSemibold,
    this.appTextBodyTextXsMedium,
    this.appTextBodyTextXsRegular,
    this.appTextBodyTextSmRegular,
    this.appTextBodyTextSmMedium,
    this.appTextBodyTextSmSemibold,
    this.appTextBodyTextBaseBold,
    this.appTextBodyTextBaseSemibold,
    this.appTextBodyTextBaseMedium,
    this.appTextBodyTextBaseRegular,
    this.appTextBodyTextLgBold,
    this.appTextBodyTextLgSemibold,
    this.appTextBodyTextLgMedium,
    this.appTextBodyTextLgRegular,
    this.appTextBodyTextXlBold,
    this.appTextBodyTextXlSemibold,
    this.appTextBodyTextXlMedium,
    this.appTextBodyTextXlRegular,
  });

  AppTextTheme.fallback()
      : this(
          appTextHeadingsDisplay1: GoogleFonts.roboto(
            fontSize: 44,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsDisplay2: GoogleFonts.roboto(
            fontSize: 40,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsDisplay3: GoogleFonts.roboto(
            fontSize: 32,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsHeading1: GoogleFonts.roboto(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsHeading2: GoogleFonts.roboto(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsHeading3: GoogleFonts.roboto(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextHeadingsHeading4: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXsSemibold: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXsMedium: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXsRegular: GoogleFonts.roboto(
            fontSize: 10,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextSmRegular: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextSmMedium: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextSmSemibold: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextBaseBold: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextBaseSemibold: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextBaseMedium: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextBaseRegular: GoogleFonts.roboto(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextLgBold: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextLgSemibold: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextLgMedium: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextLgRegular: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXlBold: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXlSemibold: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXlMedium: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
          appTextBodyTextXlRegular: GoogleFonts.roboto(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            decoration: TextDecoration.none,
          ),
        );

  @override
  AppTextTheme copyWith({
    TextStyle? appTextHeadingsDisplay1,
    TextStyle? appTextHeadingsDisplay2,
    TextStyle? appTextHeadingsDisplay3,
    TextStyle? appTextHeadingsHeading1,
    TextStyle? appTextHeadingsHeading2,
    TextStyle? appTextHeadingsHeading3,
    TextStyle? appTextHeadingsHeading4,
    TextStyle? appTextBodyTextXsSemibold,
    TextStyle? appTextBodyTextXsMedium,
    TextStyle? appTextBodyTextXsRegular,
    TextStyle? appTextBodyTextSmRegular,
    TextStyle? appTextBodyTextSmMedium,
    TextStyle? appTextBodyTextSmSemibold,
    TextStyle? appTextBodyTextBaseBold,
    TextStyle? appTextBodyTextBaseSemibold,
    TextStyle? appTextBodyTextBaseMedium,
    TextStyle? appTextBodyTextBaseRegular,
    TextStyle? appTextBodyTextLgBold,
    TextStyle? appTextBodyTextLgSemibold,
    TextStyle? appTextBodyTextLgMedium,
    TextStyle? appTextBodyTextLgRegular,
    TextStyle? appTextBodyTextXlBold,
    TextStyle? appTextBodyTextXlSemibold,
    TextStyle? appTextBodyTextXlMedium,
    TextStyle? appTextBodyTextXlRegular,
  }) {
    return AppTextTheme(
      appTextHeadingsDisplay1:
          appTextHeadingsDisplay1 ?? this.appTextHeadingsDisplay1,
      appTextHeadingsDisplay2:
          appTextHeadingsDisplay2 ?? this.appTextHeadingsDisplay2,
      appTextHeadingsDisplay3:
          appTextHeadingsDisplay3 ?? this.appTextHeadingsDisplay3,
      appTextHeadingsHeading1:
          appTextHeadingsHeading1 ?? this.appTextHeadingsHeading1,
      appTextHeadingsHeading2:
          appTextHeadingsHeading2 ?? this.appTextHeadingsHeading2,
      appTextHeadingsHeading3:
          appTextHeadingsHeading3 ?? this.appTextHeadingsHeading3,
      appTextHeadingsHeading4:
          appTextHeadingsHeading4 ?? this.appTextHeadingsHeading4,
      appTextBodyTextXsSemibold:
          appTextBodyTextXsSemibold ?? this.appTextBodyTextXsSemibold,
      appTextBodyTextXsMedium:
          appTextBodyTextXsMedium ?? this.appTextBodyTextXsMedium,
      appTextBodyTextXsRegular:
          appTextBodyTextXsRegular ?? this.appTextBodyTextXsRegular,
      appTextBodyTextSmRegular:
          appTextBodyTextSmRegular ?? this.appTextBodyTextSmRegular,
      appTextBodyTextSmMedium:
          appTextBodyTextSmMedium ?? this.appTextBodyTextSmMedium,
      appTextBodyTextSmSemibold:
          appTextBodyTextSmSemibold ?? this.appTextBodyTextSmSemibold,
      appTextBodyTextBaseBold:
          appTextBodyTextBaseBold ?? this.appTextBodyTextBaseBold,
      appTextBodyTextBaseSemibold:
          appTextBodyTextBaseSemibold ?? this.appTextBodyTextBaseSemibold,
      appTextBodyTextBaseMedium:
          appTextBodyTextBaseMedium ?? this.appTextBodyTextBaseMedium,
      appTextBodyTextBaseRegular:
          appTextBodyTextBaseRegular ?? this.appTextBodyTextBaseRegular,
      appTextBodyTextLgBold:
          appTextBodyTextLgBold ?? this.appTextBodyTextLgBold,
      appTextBodyTextLgSemibold:
          appTextBodyTextLgSemibold ?? this.appTextBodyTextLgSemibold,
      appTextBodyTextLgMedium:
          appTextBodyTextLgMedium ?? this.appTextBodyTextLgMedium,
      appTextBodyTextLgRegular:
          appTextBodyTextLgRegular ?? this.appTextBodyTextLgRegular,
      appTextBodyTextXlBold:
          appTextBodyTextXlBold ?? this.appTextBodyTextXlBold,
      appTextBodyTextXlSemibold:
          appTextBodyTextXlSemibold ?? this.appTextBodyTextXlSemibold,
      appTextBodyTextXlMedium:
          appTextBodyTextXlMedium ?? this.appTextBodyTextXlMedium,
      appTextBodyTextXlRegular:
          appTextBodyTextXlRegular ?? this.appTextBodyTextXlRegular,
    );
  }

  @override
  AppTextTheme lerp(AppTextTheme? other, double t) {
    if (other is! AppTextTheme) return this;
    return AppTextTheme(
      appTextHeadingsDisplay1: TextStyle.lerp(
          appTextHeadingsDisplay1, other.appTextHeadingsDisplay1, t),
      appTextHeadingsDisplay2: TextStyle.lerp(
          appTextHeadingsDisplay2, other.appTextHeadingsDisplay2, t),
      appTextHeadingsDisplay3: TextStyle.lerp(
          appTextHeadingsDisplay3, other.appTextHeadingsDisplay3, t),
      appTextHeadingsHeading1: TextStyle.lerp(
          appTextHeadingsHeading1, other.appTextHeadingsHeading1, t),
      appTextHeadingsHeading2: TextStyle.lerp(
          appTextHeadingsHeading2, other.appTextHeadingsHeading2, t),
      appTextHeadingsHeading3: TextStyle.lerp(
          appTextHeadingsHeading3, other.appTextHeadingsHeading3, t),
      appTextHeadingsHeading4: TextStyle.lerp(
          appTextHeadingsHeading4, other.appTextHeadingsHeading4, t),
      appTextBodyTextXsSemibold: TextStyle.lerp(
          appTextBodyTextXsSemibold, other.appTextBodyTextXsSemibold, t),
      appTextBodyTextXsMedium: TextStyle.lerp(
          appTextBodyTextXsMedium, other.appTextBodyTextXsMedium, t),
      appTextBodyTextXsRegular: TextStyle.lerp(
          appTextBodyTextXsRegular, other.appTextBodyTextXsRegular, t),
      appTextBodyTextSmRegular: TextStyle.lerp(
          appTextBodyTextSmRegular, other.appTextBodyTextSmRegular, t),
      appTextBodyTextSmMedium: TextStyle.lerp(
          appTextBodyTextSmMedium, other.appTextBodyTextSmMedium, t),
      appTextBodyTextSmSemibold: TextStyle.lerp(
          appTextBodyTextSmSemibold, other.appTextBodyTextSmSemibold, t),
      appTextBodyTextBaseBold: TextStyle.lerp(
          appTextBodyTextBaseBold, other.appTextBodyTextBaseBold, t),
      appTextBodyTextBaseSemibold: TextStyle.lerp(
          appTextBodyTextBaseSemibold, other.appTextBodyTextBaseSemibold, t),
      appTextBodyTextBaseMedium: TextStyle.lerp(
          appTextBodyTextBaseMedium, other.appTextBodyTextBaseMedium, t),
      appTextBodyTextBaseRegular: TextStyle.lerp(
          appTextBodyTextBaseRegular, other.appTextBodyTextBaseRegular, t),
      appTextBodyTextLgBold:
          TextStyle.lerp(appTextBodyTextLgBold, other.appTextBodyTextLgBold, t),
      appTextBodyTextLgSemibold: TextStyle.lerp(
          appTextBodyTextLgSemibold, other.appTextBodyTextLgSemibold, t),
      appTextBodyTextLgMedium: TextStyle.lerp(
          appTextBodyTextLgMedium, other.appTextBodyTextLgMedium, t),
      appTextBodyTextLgRegular: TextStyle.lerp(
          appTextBodyTextLgRegular, other.appTextBodyTextLgRegular, t),
      appTextBodyTextXlBold:
          TextStyle.lerp(appTextBodyTextXlBold, other.appTextBodyTextXlBold, t),
      appTextBodyTextXlSemibold: TextStyle.lerp(
          appTextBodyTextXlSemibold, other.appTextBodyTextXlSemibold, t),
      appTextBodyTextXlMedium: TextStyle.lerp(
          appTextBodyTextXlMedium, other.appTextBodyTextXlMedium, t),
      appTextBodyTextXlRegular: TextStyle.lerp(
          appTextBodyTextXlRegular, other.appTextBodyTextXlRegular, t),
    );
  }
}
