part of 'calculate_bmi_bloc.dart';

class CalculateBmiState extends Equatable {
  final Status status;
  final BmiInformationsEntity? bmiInformationsEntity;

  const CalculateBmiState({
    this.status = Status.initial,
    this.bmiInformationsEntity,
  });

  @override
  List<Object?> get props => [
        status,
      ];

  CalculateBmiState copyWith({
    Status? status,
    BmiInformationsEntity? bmiInformationsEntity,
  }) {
    return CalculateBmiState(
      status: status ?? this.status,
      bmiInformationsEntity:
          bmiInformationsEntity ?? this.bmiInformationsEntity,
    );
  }
}
