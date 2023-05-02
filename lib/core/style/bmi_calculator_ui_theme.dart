import 'package:calcule_imc/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_neutral_colors.dart';

import 'package:flutter/material.dart';

class BmiCalculatorUITheme {
  static ThemeData get standard {
    return ThemeData(
      primaryColor: BmiCalculatorUiNeutralColors.highPure,
      sliderTheme: const SliderThemeData(trackHeight: 1),
      useMaterial3: true,
      elevatedButtonTheme: _elevatedButtonTheme,
      colorScheme: ColorScheme.dark(
        background: BmiCalculatorUiBrandingColors.primaryColor,
        secondary: BmiCalculatorUiBrandingColors.secondaryColor,
        tertiary: BmiCalculatorUiBrandingColors.tertiaryColor,
      ),
    );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
      ),
    );
  }
}
