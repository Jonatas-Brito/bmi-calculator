import 'package:calcule_imc/core/icons/bmi_icons.dart';
import 'package:calcule_imc/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_font_weight.dart';
import 'package:calcule_imc/core/style/bmi_calculator_ui_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DialogFloating {
  final BuildContext context;

  // dialog properties
  final String title;
  final String description;
  final String iconPath;

  /// # DialogFloating component
  ///
  /// Description: Component for application of the floating dialog feature
  ///
  /// ## Parameters
  ///
  /// title (String) used as title in dialog
  ///
  /// description (String) used as description in dialog
  ///
  /// iconPath (String) used to set icon
  ///
  /// ### AlertDialog properties
  ///
  /// ## Text title properties
  ///
  /// String title (required)
  ///
  /// ## Text description properties
  ///
  /// String description (required)
  ///
  /// ## Text iconPath properties
  ///
  /// String iconPath (required)
  ///
  const DialogFloating({
    required this.title,
    required this.description,
    required this.iconPath,
    required this.context,
  });

  show() {
    Size size = MediaQuery.of(context).size;

    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => AlertDialog(
        key: const ValueKey('dialog-floating'),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        backgroundColor: BmiCalculatorUiBrandingColors.primaryColor,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: size.width,
              height: 120,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: SvgPicture.asset(
                        BmiIcons.closeIcon,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 46,
                    child: Image.asset(iconPath),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              title,
              textAlign: TextAlign.center,
              style: BmiCalculatorUiTextStyle.medium.copyWith(
                fontWeight: BmiCalculateUiFontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            Text(
              description,
              textAlign: TextAlign.center,
              style: BmiCalculatorUiTextStyle.xs.copyWith(
                fontWeight: BmiCalculateUiFontWeight.regular,
              ),
            ),
            const SizedBox(height: 90),
          ],
        ),
      ),
    );
  }
}
