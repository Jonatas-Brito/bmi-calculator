import 'package:bmi_calculator/core/error/failure.dart';
import 'package:bmi_calculator/domain/entities/bmi_informations_entity.dart';
import 'package:bmi_calculator/domain/entities/informations_about_user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CalculateBmiRepository {
  Future<Either<Failure, BmiInformationsEntity>> calculate(
      {required InformationsAboutUserEntity informationsAboutUserEntity});
}
