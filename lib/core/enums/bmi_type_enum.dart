import 'package:calcule_imc/core/constants/bmi_text_constants.dart';
import 'package:calcule_imc/core/icons/bmi_icons.dart';

enum BmiType {
  veryUnderweight(
    title: BmiTextConstants.attention,
    iconPath: BmiIcons.chartParliamentWarningIcon,
  ),
  underweight(
    title: BmiTextConstants.attention,
    iconPath: BmiIcons.chartParliamentWarningIcon,
  ),
  normalWeight(
    title: BmiTextConstants.congratulations,
    iconPath: BmiIcons.chartParliamentCongratulationsIconPng,
  ),
  overWight(
    title: BmiTextConstants.attention,
    iconPath: BmiIcons.chartParliamentAlertIconPng,
  ),
  obeseClassOne(
    title: BmiTextConstants.redAlert,
    iconPath: BmiIcons.chartParliamentRedAlertIcon,
  ),
  obeseClassTwo(
    title: BmiTextConstants.redAlert,
    iconPath: BmiIcons.chartParliamentRedAlertIcon,
  ),
  obeseClassThree(
    title: BmiTextConstants.redAlert,
    iconPath: BmiIcons.chartParliamentRedAlertIcon,
  );

  const BmiType({
    required this.title,
    required this.iconPath,
  });

  final String title;
  final String iconPath;
}
