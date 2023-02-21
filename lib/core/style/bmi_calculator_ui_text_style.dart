import 'package:calcule_imc/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:calcule_imc/core/style/bmi_calculate_ui_line_heights.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_colors.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculatorUiTextStyle {
  static final TextStyle _baseTextStyle = GoogleFonts.roboto(
    color: BmiCalculatorUiColors.gray100,
    fontStyle: FontStyle.normal,
    fontWeight: BmiCalculateUiFontWeight.regular,
    height: BmiCalculateUiLineHeights.lineHeightLG,
  );

  /// Regular Text Style
  static TextStyle get regular {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      height: calculateLineHeight(fontSize: 18, height: 24),
      color: BmiCalculatorUiBrandingColors.whitePure,
    );
  }

  /// Medium Text Style
  static TextStyle get medium {
    return _baseTextStyle.copyWith(
      fontSize: 20,
      fontWeight: BmiCalculateUiFontWeight.medium,
      height: calculateLineHeight(
        fontSize: 20,
        height: 24,
      ),
      color: BmiCalculatorUiBrandingColors.whitePure,
    );
  }

  /// Bold Text Style
  static TextStyle get bold {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.bold,
      height: calculateLineHeight(fontSize: 22, height: 24),
      color: BmiCalculatorUiBrandingColors.whitePure,
    );
  }

  /// Headline 1 Text Style
  static TextStyle get headline1 {
    return _baseTextStyle.copyWith(
      fontSize: 40,
      fontWeight: BmiCalculateUiFontWeight.bold,
      letterSpacing: -2,
      height: calculateLineHeight(fontSize: 40, height: 45),
    );
  }

  /// Headline 2 Text Style
  static TextStyle get headline2 {
    return _baseTextStyle.copyWith(
      fontSize: 24,
      fontWeight: BmiCalculateUiFontWeight.bold,
      letterSpacing: -1,
      height: calculateLineHeight(fontSize: 24, height: 30),
    );
  }

  /// Headline 3 Text Style
  static TextStyle get headline3 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.medium,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 22, height: 28),
    );
  }

  /// Headline 4 Text Style
  static TextStyle get headline4 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.medium,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 22, height: 28),
    );
  }

  /// Headline 5 Text Style
  static TextStyle get headline5 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.medium,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 22, height: 28),
    );
  }

  /// Headline 6 Text Style
  static TextStyle get headline6 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.medium,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 22, height: 28),
    );
  }

  /// Paragraph 1 Text Style
  static TextStyle get paragraph1 {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.medium,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 20, height: 26),
    );
  }

  /// Paragraph 2 Text Style
  static TextStyle get paragraph2 {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 16, height: 22),
    );
  }

  /// Paragraph 3 Text Style
  static TextStyle get paragraph3 {
    return _baseTextStyle.copyWith(
      fontSize: 14,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 14, height: 18),
    );
  }

  /// Paragraph 4 Text Style
  static TextStyle get paragraph4 {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      letterSpacing: 0,
      height: calculateLineHeight(fontSize: 12, height: 16),
    );
  }

  /// Overline Text Style
  static TextStyle get overline {
    return _baseTextStyle.copyWith(
      fontSize: 16,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      fontWeight: BmiCalculateUiFontWeight.medium,
    );
  }

  // new text styles

  /// Base to XXXS font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 14 | FontWeight: medium
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xxxs
  static TextStyle get xxxs {
    return _baseTextStyle.copyWith(
      fontSize: 12,
      fontWeight: BmiCalculateUiFontWeight.medium,
    );
  }

  /// Base to XXS font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 14 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xxs
  static TextStyle get xxs {
    return _baseTextStyle.copyWith(
      fontSize: 14,
    );
  }

  /// Base to XS font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 16 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xs
  static TextStyle get xs {
    return _baseTextStyle.copyWith(
      fontSize: 16,
    );
  }

  /// Base to SM font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 20 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-sm
  static TextStyle get sm {
    return _baseTextStyle.copyWith(
      fontSize: 20,
    );
  }

  /// Base to LG font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 24 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-lg
  static TextStyle get lg {
    return _baseTextStyle.copyWith(
      fontSize: 24,
    );
  }

  /// Base to XL font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 32 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xl
  static TextStyle get xl {
    return _baseTextStyle.copyWith(
      fontSize: 32,
    );
  }

  /// Base to XXL font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 40 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xxl
  static TextStyle get xxl {
    return _baseTextStyle.copyWith(
      fontSize: 40,
    );
  }

  /// Base to XXXL font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 48 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xxxl
  static TextStyle get xxxl {
    return _baseTextStyle.copyWith(
      fontSize: 48,
    );
  }

  /// Base to XXXXL font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 64 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-xxxxl
  static TextStyle get xxxxl {
    return _baseTextStyle.copyWith(
      fontSize: 64,
    );
  }

  /// Base to Display font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 80 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-display
  static TextStyle get display {
    return _baseTextStyle.copyWith(
      fontSize: 80,
    );
  }

  /// Base to Giant font
  ///
  /// Structure
  ///
  /// Font: OpenSans | FontSize: 96 | FontWeight: regular
  ///
  /// ```dart
  /// static const FontWeight regular = FontWeight.w400;
  /// ```
  ///
  /// Figma token: $font-size-giant
  static TextStyle get giant {
    return _baseTextStyle.copyWith(
      fontSize: 96,
    );
  }
}

double calculateLineHeight({required double fontSize, required double height}) {
  return height / fontSize;
}
