import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class CalculateFailure extends Failure {
  final String? type;
  final String? message;
  final Exception? exception;

  const CalculateFailure({
    this.type,
    this.message,
    this.exception,
  });

  @override
  List<Object?> get props => [
        type,
        message,
        exception,
      ];
}
