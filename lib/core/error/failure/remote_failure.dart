// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../error_imports.dart';

class RemoteFailure {
  final String errorMsg;

  RemoteFailure._({required this.errorMsg});

  factory RemoteFailure(ServerException error) {
    return RemoteFailure._(errorMsg: error.message);
  }

  @override
  bool operator ==(covariant RemoteFailure other) {
    if (identical(this, other)) return true;

    return other.errorMsg == errorMsg;
  }

  @override
  int get hashCode => errorMsg.hashCode;

  @override
  String toString() => 'RemoteFailure(errorMsg: $errorMsg)';
}
