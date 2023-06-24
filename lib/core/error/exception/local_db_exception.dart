// ignore_for_file: constant_identifier_names

import 'package:drift/native.dart';
import 'package:equatable/equatable.dart';

class LocalDatabaseException extends Equatable implements Exception {
  final String message;
  final String? explanation;
  final int? errorCode;

  const LocalDatabaseException._({
    required this.message,
    this.explanation,
    this.errorCode,
  });

  factory LocalDatabaseException(dynamic error) {
    if (error is SqliteException) {
      return LocalDatabaseException._(
          message: error.message,
          explanation: error.explanation,
          errorCode: error.extendedResultCode);
    }
    return const LocalDatabaseException._(message: 'Unknown error');
  }

  @override
  List<Object?> get props => [message, explanation, errorCode];
}
