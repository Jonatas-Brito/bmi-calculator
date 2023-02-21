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
      outlinedButtonTheme: _outlinedButtonTheme,
      textButtonTheme: _textButtonTheme,
      textTheme: _textTheme,
      snackBarTheme: _snackBarTheme,
      colorScheme: const ColorScheme.dark(
        background: BmiCalculatorUiBrandingColors.greenVogue,
      ),
    );
  }

  static TextTheme get _textTheme {
    // ignore: prefer_const_constructors
    return TextTheme(
        // headline1: BmiCalculatorUiTextStyle.headline1,
        // headline2: BmiCalculatorUiTextStyle.headline2,
        // headline3: BmiCalculatorUiTextStyle.headline3,
        // headline4: BmiCalculatorUiTextStyle.headline4,
        // headline5: BmiCalculatorUiTextStyle.headline5,
        // headline6: BmiCalculatorUiTextStyle.headline6,
        // bodyText1: BmiCalculatorUiTextStyle.paragraph1,
        // bodyText2: BmiCalculatorUiTextStyle.paragraph2,
        // caption: BmiCalculatorUiTextStyle.paragraph4,
        // overline: BmiCalculatorUiTextStyle.overline,
        // button: BmiCalculatorUiTextStyle.button,
        );
  }

  static ElevatedButtonThemeData get _elevatedButtonTheme {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
      ),
    );
  }

  static OutlinedButtonThemeData get _outlinedButtonTheme {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          color: BmiCalculatorUiBrandingColors.chatamsBlue,
          width: 1,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        foregroundColor: BmiCalculatorUiNeutralColors.highPure,
      ),
    );
  }

  static TextButtonThemeData get _textButtonTheme {
    return TextButtonThemeData(
      style: TextButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          color: BmiCalculatorUiBrandingColors.chatamsBlue,
          width: 1,
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
        foregroundColor: BmiCalculatorUiBrandingColors.chatamsBlue,
      ),
    );
  }

  static SnackBarThemeData get _snackBarTheme {
    return const SnackBarThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    );
  }
}
