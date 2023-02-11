import 'package:flutter/widgets.dart';

abstract class BmiCalculatorUiColors {
  // Primary Color

  @Deprecated(
    'Use AutodocUiNeutralColors.highPure instead. '
    'This feature will be removed in the next releases',
  )
  static const Color primaryColor = Color(0xFFFFFFFF);

  // Brand Colors
  /// Deprecated
  static const Color brandColorRed = Color(0xFFDD2A4C);

  @Deprecated(
    'Use AutodocUiBrandingColors.primaryPure instead. '
    'This feature will be removed in the next releases',
  )
  static const Color brandColorMoon = Color(0xFF0D1945);

  // Grayscale
  static const Color gray10 = Color(0xFFE7E9ED);
  static const Color gray20 = Color(0xFFCED2DB);
  static const Color gray30 = Color(0xFFB6BCC9);
  static const Color gray40 = Color(0xFF9EA5B8);
  static const Color gray50 = Color(0xFF858FA6);
  static const Color gray60 = Color(0xFF6D7994);
  static const Color gray70 = Color(0xFF556282);
  static const Color gray80 = Color(0xFF3C4C70);
  static const Color gray90 = Color(0xFF24365E);
  static const Color gray100 = Color(0xFF0B1F4D);

  // Semantic Colors
  static const Color support01 = Color(0xFF4070F4);
  static const Color support02 = Color(0xFF0BB07B);
  static const Color support03 = Color(0xFFFFAD0D);
  static const Color support04 = Color(0xFFF03D3D);
  static const Color support05 = Color(0xFF3C4C70);

  // Light Background
  // Positive
  static const Color lightBackgroundPositive1 = Color(0xFFFFFFFF);
  static const Color lightBackgroundPositive2 = Color(0xFFDFE6F2);

  // Dark Background
  // Negative
  static const Color darkBackgroundNegative1 = Color(0xFF0D1945);

  // Color Background
  // Negative
  static const Color colorBackgroundNegative1 = Color(0xFFDD2A4C);
  static const Color colorBackgroundNegative2 = Color(0xFF0D1945);
}
