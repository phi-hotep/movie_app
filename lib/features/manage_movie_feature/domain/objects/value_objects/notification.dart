import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../core/error/error_imports.dart';

part 'notification.freezed.dart';

@freezed
class Notification with _$Notification {
  const factory Notification.saveSuccess(
      {@Default('Movie was saved') String message}) = _SaveSuccess;
  const factory Notification.saveError({required LocalFailure fail}) =
      _SaveError;

  const factory Notification.deleteSuccess(
      {@Default('Movie was deleted') String message}) = _DeleteSuccess;
  const factory Notification.deleteError({required LocalFailure fail}) =
      _DeleteError;
}
