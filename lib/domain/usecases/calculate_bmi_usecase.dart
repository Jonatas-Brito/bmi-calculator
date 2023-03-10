import 'package:calcule_imc/core/error/failure.dart';
import 'package:calcule_imc/core/usecases/usecase.dart';
import 'package:calcule_imc/domain/entities/bmi_informations_entity.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:calcule_imc/domain/repositories/calculate_bmi_repositoy.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

@injectable
class CalculateBmiUsecase
    extends UseCase<BmiInformationsEntity, CalculateBmiParams> {
  CalculateBmiUsecase({required CalculateBmiRepository calculateBmiRepository})
      : _calculateBmiRepository = calculateBmiRepository;
  final CalculateBmiRepository _calculateBmiRepository;

  @override
  Future<Either<Failure, BmiInformationsEntity>> call(
      CalculateBmiParams params) async {
    return _calculateBmiRepository.calculate(
        informationsAboutUserEntity: params._informationsAboutUserEntity);
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
