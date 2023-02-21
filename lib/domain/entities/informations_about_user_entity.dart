import 'package:calcule_imc/core/enums/sex_enum.dart';
import 'package:equatable/equatable.dart';

class InformationsAboutUserEntity extends Equatable {
  const InformationsAboutUserEntity({
    required this.name,
    required this.age,
    required this.height,
    required this.weight,
    required this.sex,
    this.bmi,
  });

  final String name;
  final int age;
  final double height;
  final double weight;
  final Sex sex;
  final double? bmi;

  InformationsAboutUserEntity copyWith({
    String? name,
    int? age,
    double? height,
    double? weight,
    Sex? sex,
    double? bmi,
  }) {
    return InformationsAboutUserEntity(
      name: name ?? this.name,
      age: age ?? this.age,
      height: height ?? this.height,
      weight: weight ?? this.weight,
      sex: sex ?? this.sex,
      bmi: bmi ?? this.bmi,
    );
  }

  @override
  List<Object?> get props => [
        name,
        age,
        height,
        weight,
        sex,
        bmi,
      ];
}
