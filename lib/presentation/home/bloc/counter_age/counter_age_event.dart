part of 'counter_age_bloc.dart';

abstract class CounterAgeEvent extends Equatable {
  const CounterAgeEvent();
}

class PlusAge extends CounterAgeEvent {
  const PlusAge({required this.age});
  final int age;
  @override
  List<Object> get props => [
        age,
      ];
}

class MinusAge extends CounterAgeEvent {
  const MinusAge({required this.age});
  final int age;
  @override
  List<Object> get props => [
        age,
      ];
}
