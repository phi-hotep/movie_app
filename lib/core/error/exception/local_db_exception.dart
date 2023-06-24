// ignore_for_file: constant_identifier_names

import 'package:drift/native.dart';
import 'package:equatable/equatable.dart';

enum DatabaseExceptionType {
  SQLITE_ERROR,
  SQLITE_INTERNE,
  SQLITE_PERM,
  SQLITE_ABORT,
  SQLITE_BUSY,
  SQLITE_LOCKED,
  SQLITE_NOMEM,
  SQLITE_READONLY,
  SQLITE_INTERRUPT,
  SQLITE_IOERR,
  SQLITE_CORRUPT,
  SQLITE_NOTFOUND,
  SQLITE_FULL,
  SQLITE_CANTOPEN,
  SQLITE_PROTOCOL,
  SQLITE_EMPTY,
  SQLITE_SCHEMA,
  SQLITE_TOOBIG,
  SQLITE_CONSTRAINT,
  SQLITE_MISMATCH,
  SQLITE_MISUSE,
  SQLITE_NOLFS,
  SQLITE_AUTH,
  SQLITE_FORMAT,
  SQLITE_RANGE,
  SQLITE_NOTADB,
  AVIS_SQLITE,
  SQLITE_WARNING,
}

class LocalDatabaseException extends Equatable implements Exception {
  final String message;
  final String? explanation;
  final int? errorCode;

  const LocalDatabaseException({
    required this.message,
    this.explanation,
    this.errorCode,
  });

  factory LocalDatabaseException.fromSqliteException(SqliteException error) {
    return LocalDatabaseException(
        message: error.message,
        explanation: error.explanation,
        errorCode: error.extendedResultCode);
  }

  @override
  List<Object?> get props => [message, explanation, errorCode];
}
