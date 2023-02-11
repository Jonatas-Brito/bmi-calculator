import 'dart:async';

import 'package:bmi_calculator/core/enums/status_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'counter_age_event.dart';
part 'counter_age_state.dart';

@injectable
class CounterAgeBloc extends Bloc<CounterAgeEvent, CounterAgeState> {
  CounterAgeBloc() : super(const CounterAgeState()) {
    on<PlusAge>(_plusAge);
    on<MinusAge>(_minusAge);
  }

  FutureOr<void> _plusAge(PlusAge event, Emitter<CounterAgeState> emit) {
    emit(
      CounterAgeState(
        status: Status.success,
        age: event.age + 1,
      ),
    );
  }

  FutureOr<void> _minusAge(MinusAge event, Emitter<CounterAgeState> emit) {
    emit(
      CounterAgeState(
        status: Status.success,
        age: event.age - 1,
      ),
    );
  }
}
