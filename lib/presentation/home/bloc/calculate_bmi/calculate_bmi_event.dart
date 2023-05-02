part of 'calculate_bmi_bloc.dart';

abstract class CalculateBmiEvent extends Equatable {
  const CalculateBmiEvent();
  @override
  List<Object> get props => [];
}

class CalculateBmi extends CalculateBmiEvent {
  const CalculateBmi(
      {required InformationsAboutUserEntity informationsAboutUserEntity})
      : _informationsAboutUserEntity = informationsAboutUserEntity;

  final InformationsAboutUserEntity _informationsAboutUserEntity;

  @override
  List<Object> get props => [_informationsAboutUserEntity];
}
