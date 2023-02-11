import 'package:bmi_calculator/core/enums/sex_enum.dart';
import 'package:bmi_calculator/domain/entities/informations_about_user_entity.dart';
import 'package:equatable/equatable.dart';

class InformationsAboutUserModel extends InformationsAboutUserEntity
    with EquatableMixin {
  const InformationsAboutUserModel({
    required this.nameModel,
    required this.ageModel,
    required this.heightModel,
    required this.weightModel,
    required this.sexModel,
    required this.bmiModel,
  }) : super(
          name: nameModel,
          age: ageModel,
          height: heightModel,
          weight: weightModel,
          sex: sexModel,
          bmi: bmiModel,
        );

  final String nameModel;
  final int ageModel;
  final double heightModel;
  final double weightModel;
  final Sex sexModel;
  final double bmiModel;

  @override
  List<Object?> get props => [
        nameModel,
        ageModel,
        heightModel,
        weightModel,
        bmiModel,
        sexModel,
      ];
}
