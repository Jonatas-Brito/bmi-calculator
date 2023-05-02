import 'package:calcule_imc/core/enums/bmi_type_enum.dart';
import 'package:calcule_imc/core/error/failure.dart';
import 'package:calcule_imc/core/usecases/usecase.dart';
import 'package:calcule_imc/domain/entities/bmi_informations_entity.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class CalculateBmiUsecase
    extends UseCase<BmiInformationsEntity, CalculateBmiParams> {
  CalculateBmiUsecase();

  @override
  Future<Either<Failure, BmiInformationsEntity>> call(
      CalculateBmiParams params) async {
    try {
      double height = params._informationsAboutUserEntity.height;
      double weight = params._informationsAboutUserEntity.weight;
      double heightWSquared = height * height;
      double bmi = weight / heightWSquared;
      late BmiType bmiTypeModel;

      if (bmi < 17) {
        bmiTypeModel = BmiType.veryUnderweight;
      } else if (bmi >= 17 && bmi < 18.5) {
        bmiTypeModel = BmiType.underweight;
      } else if (bmi >= 18.5 && bmi < 25) {
        bmiTypeModel = BmiType.normalWeight;
      } else if (bmi >= 25 && bmi < 30) {
        bmiTypeModel = BmiType.overWight;
      } else if (bmi >= 30 && bmi < 35) {
        bmiTypeModel = BmiType.obeseClassOne;
      } else if (bmi >= 35 && bmi < 40) {
        bmiTypeModel = BmiType.obeseClassTwo;
      } else if (bmi >= 40) {
        bmiTypeModel = BmiType.obeseClassThree;
      }
      return Right(BmiInformationsEntity(
        bmi: bmi,
        bmiType: bmiTypeModel,
      ));
    } catch (e) {
      return const Left(CalculateFailure());
    }
  }
}

class CalculateBmiParams extends Equatable {
  const CalculateBmiParams(
      {required InformationsAboutUserEntity informationsAboutUserEntity})
      : _informationsAboutUserEntity = informationsAboutUserEntity;
  final InformationsAboutUserEntity _informationsAboutUserEntity;

  @override
  List<Object?> get props => [_informationsAboutUserEntity];
}
