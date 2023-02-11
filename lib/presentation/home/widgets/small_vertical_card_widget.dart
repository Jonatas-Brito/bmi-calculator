import 'package:bmi_calculator/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:flutter/material.dart';

class SmallVerticalCard extends StatelessWidget {
  const SmallVerticalCard({
    this.child,
    this.color = BmiCalculatorUiBrandingColors.chatamsBlue,
    super.key,
  });
  final Color color;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 140,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: child,
    );
  }
}
