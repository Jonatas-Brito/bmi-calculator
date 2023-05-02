part of 'counter_weight_bloc.dart';

class CounterWeightState extends Equatable {
  final Status status;
  final double weight;

  const CounterWeightState({
    this.status = Status.initial,
    this.weight = 50,
  });

  @override
  List<Object?> get props => [
        status,
        weight,
      ];

  CounterWeightState copyWith({
    Status? status,
    double? weight,
  }) {
    return CounterWeightState(
      status: status ?? this.status,
      weight: weight ?? this.weight,
    );
  }
}
