import 'package:calcule_imc/core/enums/bmi_type_enum.dart';
import 'package:calcule_imc/core/error/exception.dart';
import 'package:calcule_imc/data/model/bmi_informations_model.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:injectable/injectable.dart';

abstract class CalculateBmiLocalDatasource {
  Future<BmiInformationsModel> calculate(
      {required InformationsAboutUserEntity informationsAboutUserModel});
}

@LazySingleton(as: CalculateBmiLocalDatasource)
class CalculateBmiLocalDatasourceImpl implements CalculateBmiLocalDatasource {
  @override
  Future<BmiInformationsModel> calculate(
      {required InformationsAboutUserEntity informationsAboutUserModel}) async {
    try {
      double height = informationsAboutUserModel.height;
      double weight = informationsAboutUserModel.weight;
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
      return BmiInformationsModel(
        bmiModel: bmi,
        bmiTypeModel: bmiTypeModel,
      );
    } catch (e) {
      throw const CalculateException();
    }
  }
}
