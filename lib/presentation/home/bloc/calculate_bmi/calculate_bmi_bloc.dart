import 'dart:async';

import 'package:calcule_imc/core/enums/status_enum.dart';
import 'package:calcule_imc/domain/entities/bmi_informations_entity.dart';
import 'package:calcule_imc/domain/entities/informations_about_user_entity.dart';
import 'package:calcule_imc/domain/usecases/calculate_bmi_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'calculate_bmi_event.dart';
part 'calculate_bmi_state.dart';

@injectable
class CalculateBmiBloc extends Bloc<CalculateBmiEvent, CalculateBmiState> {
  final CalculateBmiUsecase _calculateBmiUsecase;
  CalculateBmiBloc({required CalculateBmiUsecase calculateBmiUsecase})
      : _calculateBmiUsecase = calculateBmiUsecase,
        super(const CalculateBmiState()) {
    on<CalculateBmi>(_calculateBmi);
  }

  Future<FutureOr<void>> _calculateBmi(
      CalculateBmi event, Emitter<CalculateBmiState> emit) async {
    emit(const CalculateBmiState(status: Status.initial));
    final failureOrSuccess = await _calculateBmiUsecase(CalculateBmiParams(
        informationsAboutUserEntity: event._informationsAboutUserEntity));

    failureOrSuccess.fold(
      (failure) => emit(const CalculateBmiState(status: Status.failure)),
      (bmiInformationsEntity) => emit(
        CalculateBmiState(
          status: Status.success,
          bmiInformationsEntity: bmiInformationsEntity,
        ),
      ),
    );
  }
}
