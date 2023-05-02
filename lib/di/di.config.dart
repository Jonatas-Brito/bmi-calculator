// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:calcule_imc/domain/usecases/calculate_bmi_usecase.dart' as _i3;
import 'package:calcule_imc/presentation/home/bloc/calculate_bmi/calculate_bmi_bloc.dart'
    as _i7;
import 'package:calcule_imc/presentation/home/bloc/counter_age/counter_age_bloc.dart'
    as _i4;
import 'package:calcule_imc/presentation/home/bloc/counter_weight/counter_weight_bloc.dart'
    as _i5;
import 'package:calcule_imc/presentation/home/bloc/select_sex/select_sex_bloc.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.CalculateBmiUsecase>(() => _i3.CalculateBmiUsecase());
    gh.factory<_i4.CounterAgeBloc>(() => _i4.CounterAgeBloc());
    gh.factory<_i5.CounterWeightBloc>(() => _i5.CounterWeightBloc());
    gh.factory<_i6.SelectSexBloc>(() => _i6.SelectSexBloc());
    gh.factory<_i7.CalculateBmiBloc>(() => _i7.CalculateBmiBloc(
        calculateBmiUsecase: gh<_i3.CalculateBmiUsecase>()));
    return this;
  }
}
