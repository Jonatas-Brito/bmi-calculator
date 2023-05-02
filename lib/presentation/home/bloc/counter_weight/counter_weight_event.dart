part of 'counter_weight_bloc.dart';

abstract class CounterWeightEvent extends Equatable {
  const CounterWeightEvent();
}

class PlusWeight extends CounterWeightEvent {
  const PlusWeight({required this.weight});
  final double weight;
  @override
  List<Object> get props => [
        weight,
      ];
}

class MinusWeight extends CounterWeightEvent {
  const MinusWeight({required this.weight});
  final double weight;
  @override
  List<Object> get props => [
        weight,
      ];
}
