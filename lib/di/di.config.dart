// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:calcule_imc/data/datasources/calculate_bmi_local_datasource.dart'
    as _i3;
import 'package:calcule_imc/data/repositories/calculate_bmi_repositoy_impl.dart'
    as _i5;
import 'package:calcule_imc/domain/repositories/calculate_bmi_repositoy.dart'
    as _i4;
import 'package:calcule_imc/domain/usecases/calculate_bmi_usecase.dart' as _i6;
import 'package:calcule_imc/presentation/home/bloc/calculate_bmi/calculate_bmi_bloc.dart'
    as _i10;
import 'package:calcule_imc/presentation/home/bloc/counter_age/counter_age_bloc.dart'
    as _i7;
import 'package:calcule_imc/presentation/home/bloc/counter_weight/counter_weight_bloc.dart'
    as _i8;
import 'package:calcule_imc/presentation/home/bloc/select_sex/select_sex_bloc.dart'
    as _i9;
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
    gh.lazySingleton<_i3.CalculateBmiLocalDatasource>(
        () => _i3.CalculateBmiLocalDatasourceImpl());
    gh.lazySingleton<_i4.CalculateBmiRepository>(() =>
        _i5.CalculateBmiRepositoryImpl(
            calculateBmiLocalDatasource:
                gh<_i3.CalculateBmiLocalDatasource>()));
    gh.factory<_i6.CalculateBmiUsecase>(() => _i6.CalculateBmiUsecase(
        calculateBmiRepository: gh<_i4.CalculateBmiRepository>()));
    gh.factory<_i7.CounterAgeBloc>(() => _i7.CounterAgeBloc());
    gh.factory<_i8.CounterWeightBloc>(() => _i8.CounterWeightBloc());
    gh.factory<_i9.SelectSexBloc>(() => _i9.SelectSexBloc());
    gh.factory<_i10.CalculateBmiBloc>(() => _i10.CalculateBmiBloc(
        calculateBmiUsecase: gh<_i6.CalculateBmiUsecase>()));
    return this;
  }
}
