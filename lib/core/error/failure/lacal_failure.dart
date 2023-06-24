// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../error_imports.dart';

class LocalFailure {
  final String failureMsg;
  final String? failureDetails;

  LocalFailure._({required this.failureMsg, this.failureDetails});

  factory LocalFailure(LocalDatabaseException error) => LocalFailure._(
      failureMsg: error.message, failureDetails: error.explanation);

  @override
  bool operator ==(covariant LocalFailure other) {
    if (identical(this, other)) return true;

    return other.failureMsg == failureMsg &&
        other.failureDetails == failureDetails;
  }

  @override
  int get hashCode => failureMsg.hashCode ^ failureDetails.hashCode;

  @override
  String toString() =>
      'LocalDatabaseFailure(errorMsg: $failureMsg, errorDetails: $failureDetails)';
}
