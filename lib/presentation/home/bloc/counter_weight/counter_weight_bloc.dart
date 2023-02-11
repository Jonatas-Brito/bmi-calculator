import 'dart:async';

import 'package:bmi_calculator/core/enums/status_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'counter_weight_event.dart';
part 'counter_weight_state.dart';

@injectable
class CounterWeightBloc extends Bloc<CounterWeightEvent, CounterWeightState> {
  CounterWeightBloc() : super(const CounterWeightState()) {
    on<PlusWeight>(_plusWeight);
    on<MinusWeight>(_minusWeight);
  }

  FutureOr<void> _plusWeight(
      PlusWeight event, Emitter<CounterWeightState> emit) {
    emit(
      CounterWeightState(
        status: Status.success,
        weight: event.weight + 1,
      ),
    );
  }

  FutureOr<void> _minusWeight(
      MinusWeight event, Emitter<CounterWeightState> emit) {
    emit(
      CounterWeightState(
        status: Status.success,
        weight: event.weight - 1,
      ),
    );
  }
}
