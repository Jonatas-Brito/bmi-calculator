part of 'counter_age_bloc.dart';

class CounterAgeState extends Equatable {
  final Status status;
  final int age;

  const CounterAgeState({
    this.status = Status.initial,
    this.age = 30,
  });

  @override
  List<Object?> get props => [
        status,
        age,
      ];

  CounterAgeState copyWith({
    Status? status,
    int? age,
  }) {
    return CounterAgeState(
      status: status ?? this.status,
      age: age ?? this.age,
    );
  }
}
