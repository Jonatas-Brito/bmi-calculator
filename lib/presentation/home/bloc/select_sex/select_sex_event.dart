part of 'select_sex_bloc.dart';

abstract class SelectSexEvent extends Equatable {
  const SelectSexEvent();
}

class SelectSex extends SelectSexEvent {
  const SelectSex({required this.sex});
  final Sex sex;

  @override
  List<Object> get props => [
        sex,
      ];
}
