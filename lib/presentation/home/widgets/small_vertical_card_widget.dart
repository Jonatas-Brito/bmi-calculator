import 'package:calcule_imc/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:flutter/material.dart';

class SmallVerticalCard extends StatelessWidget {
  const SmallVerticalCard({
    this.child,
    this.color,
    this.onTap,
    super.key,
  });

  final Color? color;
  final Widget? child;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(
        Radius.circular(6),
      ),
      child: Container(
        width: 130,
        height: 140,
        decoration: BoxDecoration(
          color: color ?? BmiCalculatorUiBrandingColors.secondaryColor,
          borderRadius: const BorderRadius.all(
            Radius.circular(6),
          ),
        ),
        child: child,
      ),
    );
  }
}
