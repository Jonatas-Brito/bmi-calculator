import 'package:bmi_calculator/core/enums/bmi_type_enum.dart';
import 'package:bmi_calculator/domain/entities/bmi_informations_entity.dart';
import 'package:equatable/equatable.dart';

class BmiInformationsModel extends BmiInformationsEntity with EquatableMixin {
  const BmiInformationsModel({
    required this.bmiModel,
    required this.bmiTypeModel,
  }) : super(
          bmi: bmiModel,
          bmiType: bmiTypeModel,
        );

  final double bmiModel;
  final BmiType bmiTypeModel;

  @override
  List<Object?> get props => [
        bmiModel,
        bmiTypeModel,
      ];
}
