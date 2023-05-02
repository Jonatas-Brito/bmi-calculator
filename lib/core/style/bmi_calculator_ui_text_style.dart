import 'package:calcule_imc/core/style/bmi_calculator_ui_font_weight.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_neutral_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculatorUiTextStyle {
  static final TextStyle _baseTextStyle = GoogleFonts.roboto(
    color: BmiCalculatorUiNeutralColors.highPure,
    fontStyle: FontStyle.normal,
    fontWeight: BmiCalculateUiFontWeight.regular,
  );

  /// Regular Text Style
  static TextStyle get regular {
    return _baseTextStyle.copyWith(
      fontSize: 18,
      height: calculateLineHeight(fontSize: 18, height: 24),
      color: BmiCalculatorUiNeutralColors.highPure,
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
      color: BmiCalculatorUiNeutralColors.highPure,
    );
  }

  /// Bold Text Style
  static TextStyle get bold {
    return _baseTextStyle.copyWith(
      fontSize: 22,
      fontWeight: BmiCalculateUiFontWeight.bold,
      height: calculateLineHeight(fontSize: 22, height: 24),
      color: BmiCalculatorUiNeutralColors.highPure,
    );
  }

  /// Button Text Style
  static TextStyle get button {
    return _baseTextStyle.copyWith(
      fontSize: 16,
      color: BmiCalculatorUiNeutralColors.highPure,
      fontWeight: BmiCalculateUiFontWeight.medium,
    );
  }

  // new text styles

  /// Base to XXXS font
  ///
  /// Structure
  ///
  /// Font: Roboto | FontSize: 14 | FontWeight: medium
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
  /// Font: Roboto | FontSize: 14 | FontWeight: regular
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
  /// Font: Roboto | FontSize: 16 | FontWeight: regular
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
}

double calculateLineHeight({required double fontSize, required double height}) {
  return height / fontSize;
}
