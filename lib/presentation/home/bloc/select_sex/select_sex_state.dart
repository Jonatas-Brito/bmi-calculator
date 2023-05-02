part of 'select_sex_bloc.dart';

class SelectSexState extends Equatable {
  final Status status;
  final Sex? sex;

  const SelectSexState({
    this.status = Status.initial,
    this.sex,
  });

  @override
  List<Object?> get props => [
        status,
        sex,
      ];

  SelectSexState copyWith({
    Status? status,
    Sex? sex,
  }) {
    return SelectSexState(
      status: status ?? this.status,
      sex: sex ?? this.sex,
    );
  }
}
