import 'package:calcule_imc/core/error/exception.dart';
import 'package:calcule_imc/data/datasources/calculate_bmi_local_datasource.dart';
import 'package:calcule_imc/data/model/bmi_informations_model.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:calcule_imc/domain/entities/bmi_informations_entity.dart';
import 'package:calcule_imc/core/error/failure.dart';
import 'package:calcule_imc/domain/repositories/calculate_bmi_repositoy.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: CalculateBmiRepository)
class CalculateBmiRepositoryImpl implements CalculateBmiRepository {
  const CalculateBmiRepositoryImpl(
      {required CalculateBmiLocalDatasource calculateBmiLocalDatasource})
      : _calculateBmiLocalDatasource = calculateBmiLocalDatasource;
  final CalculateBmiLocalDatasource _calculateBmiLocalDatasource;

  @override
  Future<Either<Failure, BmiInformationsEntity>> calculate(
      {required InformationsAboutUserEntity
          informationsAboutUserEntity}) async {
    try {
      BmiInformationsModel bmiInformationsModel =
          await _calculateBmiLocalDatasource.calculate(
        informationsAboutUserModel: informationsAboutUserEntity,
      );

      return Right(bmiInformationsModel);
    } on CalculateException catch (e) {
      return Left(CalculateFailure(exception: e.exception));
    }
  }
}
