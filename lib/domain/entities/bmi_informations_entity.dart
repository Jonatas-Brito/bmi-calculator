import 'package:calcule_imc/core/enums/bmi_type_enum.dart';
import 'package:equatable/equatable.dart';

class BmiInformationsEntity extends Equatable {
  const BmiInformationsEntity({
    required this.bmi,
    required this.bmiType,
  });

  final double bmi;
  final BmiType bmiType;

  BmiInformationsEntity copyWith({
    double? bmi,
    BmiType? bmiType,
  }) {
    return BmiInformationsEntity(
      bmi: bmi ?? this.bmi,
      bmiType: bmiType ?? this.bmiType,
    );
  }

  @override
  List<Object?> get props => [
        bmi,
        bmiType,
      ];
}
