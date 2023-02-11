import 'package:bmi_calculator/core/icons/bmi_icons.dart';
import 'package:bmi_calculator/core/style/bmi_caculator_ui_branding_colors.dart';
import 'package:bmi_calculator/core/style/bmi_calculator_ui_text_style.dart';
import 'package:bmi_calculator/presentation/home/widgets/small_vertical_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SmallVerticalCardCounter extends StatefulWidget {
  const SmallVerticalCardCounter({
    required this.title,
    required this.value,
    this.pressedPlusButton,
    this.pressedMinusButton,
    this.pressedContinuouslyAdd,
    this.pressedContinuouslyRemove,
    super.key,
  });

  final String title;
  final double value;
  final VoidCallback? pressedPlusButton;
  final VoidCallback? pressedMinusButton;
  final VoidCallback? pressedContinuouslyAdd;
  final VoidCallback? pressedContinuouslyRemove;

  @override
  State<SmallVerticalCardCounter> createState() =>
      _SmallVerticalCardCounterState();
}

class _SmallVerticalCardCounterState extends State<SmallVerticalCardCounter> {
  Color plusButtonColor = BmiCalculatorUiBrandingColors.greenVogue;
  Color minusButtonColor = BmiCalculatorUiBrandingColors.greenVogue;
  double buttonSize = 38;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SmallVerticalCard(
      child: Column(
        children: [
          const SizedBox(height: 20),
          Text(
            widget.title,
            style: BmiCalculatorUiTextStyle.regular,
          ),
          Text(
            "${widget.value.floor()}",
            style: BmiCalculatorUiTextStyle.regular.copyWith(fontSize: 32),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: widget.pressedPlusButton,
                onLongPress: widget.pressedContinuouslyAdd,
                onTapDown: (details) {
                  setState(() {
                    plusButtonColor = BmiCalculatorUiBrandingColors.flushOrange;
                  });
                },
                onTapUp: (details) {
                  setState(() {
                    plusButtonColor = BmiCalculatorUiBrandingColors.greenVogue;
                  });
                },
                child: Container(
                  height: buttonSize,
                  width: buttonSize,
                  decoration: BoxDecoration(
                      color: plusButtonColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    BmiIcons.plusIcon,
                  ),
                ),
              ),
              const SizedBox(width: 18),
              GestureDetector(
                onTap: widget.value > 0 ? widget.pressedMinusButton : null,
                onLongPress: widget.pressedContinuouslyRemove,
                onTapDown: (details) {
                  setState(() {
                    if (widget.value > 0) {
                      minusButtonColor =
                          BmiCalculatorUiBrandingColors.flushOrange;
                    }
                  });
                },
                onTapUp: (details) {
                  setState(() {
                    minusButtonColor = BmiCalculatorUiBrandingColors.greenVogue;
                  });
                },
                child: Container(
                  height: buttonSize,
                  width: buttonSize,
                  decoration: BoxDecoration(
                      color: minusButtonColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: SvgPicture.asset(
                    BmiIcons.minusIcon,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
