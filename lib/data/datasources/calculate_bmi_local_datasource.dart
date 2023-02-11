import 'package:bmi_calculator/core/enums/bmi_type_enum.dart';
import 'package:bmi_calculator/core/error/exception.dart';
import 'package:bmi_calculator/data/model/bmi_informations_model.dart';
import 'package:bmi_calculator/domain/entities/informations_about_user_entity.dart';
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
      double bmi = (height * height) / weight;

      if (bmi == 2) {}

      return const BmiInformationsModel(
          bmiModel: 00, bmiTypeModel: BmiType.normalWeight);
    } catch (e) {
      throw const CalculateException();
    }
  }
}
