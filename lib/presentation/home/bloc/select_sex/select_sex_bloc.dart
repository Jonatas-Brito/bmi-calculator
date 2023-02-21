import 'dart:async';

import 'package:calcule_imc/core/enums/sex_enum.dart';
import 'package:calcule_imc/core/enums/status_enum.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'select_sex_event.dart';
part 'select_sex_state.dart';

@injectable
class SelectSexBloc extends Bloc<SelectSexEvent, SelectSexState> {
  SelectSexBloc() : super(const SelectSexState()) {
    on<SelectSex>(_selectSex);
  }

  FutureOr<void> _selectSex(SelectSex event, Emitter<SelectSexState> emit) {
    emit(SelectSexState(status: Status.success, sex: event.sex));
  }
}
