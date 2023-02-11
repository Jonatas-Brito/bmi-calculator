import 'package:bmi_calculator/core/enums/bmi_type_enum.dart';
import 'package:bmi_calculator/domain/entities/bmi_informations_entity.dart';

mixin HomeMixin {
  String setBmiDescription({
    required BmiInformationsEntity bmiInformationsEntity,
  }) {
    switch (bmiInformationsEntity.bmiType) {
      case BmiType.veryUnderweight:
        return '''Você está abaixo de seu peso. 
      Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Procure rapidamente ajuda médica para melhorar sua qualidade de vida.''';
      case BmiType.underweight:
        return '''Você está levemente abaixo de seu peso. 
      Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Procure ajuda médica para melhorar sua qualidade de vida.''';
      case BmiType.normalWeight:
        return '''Seu peso está incrível. Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Mantenha seus hábitos saudáveis.''';
      case BmiType.overWight:
        return '''Você está levemente acima de seu peso. Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Faça atividade física e tenha uma boa alimentação. ''';
      case BmiType.obeseClassOne:
        return '''Obesidade grau I. Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Procure orientação médica e evite riscos de doenças.''';
      case BmiType.obeseClassTwo:
        return '''Obesidade grau II. Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Procure orientação médica e evite riscos de doenças.''';
      case BmiType.obeseClassThree:
        return '''Obesidade grau III. Seu IMC é ${bmiInformationsEntity.bmi.toStringAsFixed(2)}. Procure orientação médica e evite riscos de doenças.''';
    }
  }
}
