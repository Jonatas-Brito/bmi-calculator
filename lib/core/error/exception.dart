import 'package:equatable/equatable.dart';

class CalculateException extends Equatable implements Exception {
  final Exception? exception;
  final String? message;

  const CalculateException({this.exception, this.message});

  @override
  List<Object?> get props => [exception];
}
