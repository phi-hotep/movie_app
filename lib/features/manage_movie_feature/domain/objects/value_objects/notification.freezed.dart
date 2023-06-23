// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Notification {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) saveSuccess,
    required TResult Function(LocalFailure fail) saveError,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(LocalFailure fail) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? saveSuccess,
    TResult? Function(LocalFailure fail)? saveError,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(LocalFailure fail)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? saveSuccess,
    TResult Function(LocalFailure fail)? saveError,
    TResult Function(String message)? deleteSuccess,
    TResult Function(LocalFailure fail)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_SaveError value) saveError,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_SaveError value)? saveError,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_SaveError value)? saveError,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationCopyWith<$Res> {
  factory $NotificationCopyWith(
          Notification value, $Res Function(Notification) then) =
      _$NotificationCopyWithImpl<$Res, Notification>;
}

/// @nodoc
class _$NotificationCopyWithImpl<$Res, $Val extends Notification>
    implements $NotificationCopyWith<$Res> {
  _$NotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveSuccessCopyWith<$Res> {
  factory _$$_SaveSuccessCopyWith(
          _$_SaveSuccess value, $Res Function(_$_SaveSuccess) then) =
      __$$_SaveSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_SaveSuccessCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SaveSuccess>
    implements _$$_SaveSuccessCopyWith<$Res> {
  __$$_SaveSuccessCopyWithImpl(
      _$_SaveSuccess _value, $Res Function(_$_SaveSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_SaveSuccess(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveSuccess implements _SaveSuccess {
  const _$_SaveSuccess({this.message = 'Movie was saved'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Notification.saveSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveSuccessCopyWith<_$_SaveSuccess> get copyWith =>
      __$$_SaveSuccessCopyWithImpl<_$_SaveSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) saveSuccess,
    required TResult Function(LocalFailure fail) saveError,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(LocalFailure fail) deleteError,
  }) {
    return saveSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? saveSuccess,
    TResult? Function(LocalFailure fail)? saveError,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(LocalFailure fail)? deleteError,
  }) {
    return saveSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? saveSuccess,
    TResult Function(LocalFailure fail)? saveError,
    TResult Function(String message)? deleteSuccess,
    TResult Function(LocalFailure fail)? deleteError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_SaveError value) saveError,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return saveSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_SaveError value)? saveError,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return saveSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_SaveError value)? saveError,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (saveSuccess != null) {
      return saveSuccess(this);
    }
    return orElse();
  }
}

abstract class _SaveSuccess implements Notification {
  const factory _SaveSuccess({final String message}) = _$_SaveSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$_SaveSuccessCopyWith<_$_SaveSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveErrorCopyWith<$Res> {
  factory _$$_SaveErrorCopyWith(
          _$_SaveError value, $Res Function(_$_SaveError) then) =
      __$$_SaveErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalFailure fail});
}

/// @nodoc
class __$$_SaveErrorCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_SaveError>
    implements _$$_SaveErrorCopyWith<$Res> {
  __$$_SaveErrorCopyWithImpl(
      _$_SaveError _value, $Res Function(_$_SaveError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fail = null,
  }) {
    return _then(_$_SaveError(
      fail: null == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }
}

/// @nodoc

class _$_SaveError implements _SaveError {
  const _$_SaveError({required this.fail});

  @override
  final LocalFailure fail;

  @override
  String toString() {
    return 'Notification.saveError(fail: $fail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveError &&
            (identical(other.fail, fail) || other.fail == fail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveErrorCopyWith<_$_SaveError> get copyWith =>
      __$$_SaveErrorCopyWithImpl<_$_SaveError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) saveSuccess,
    required TResult Function(LocalFailure fail) saveError,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(LocalFailure fail) deleteError,
  }) {
    return saveError(fail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? saveSuccess,
    TResult? Function(LocalFailure fail)? saveError,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(LocalFailure fail)? deleteError,
  }) {
    return saveError?.call(fail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? saveSuccess,
    TResult Function(LocalFailure fail)? saveError,
    TResult Function(String message)? deleteSuccess,
    TResult Function(LocalFailure fail)? deleteError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(fail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_SaveError value) saveError,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_SaveError value)? saveError,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_SaveError value)? saveError,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class _SaveError implements Notification {
  const factory _SaveError({required final LocalFailure fail}) = _$_SaveError;

  LocalFailure get fail;
  @JsonKey(ignore: true)
  _$$_SaveErrorCopyWith<_$_SaveError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteSuccessCopyWith<$Res> {
  factory _$$_DeleteSuccessCopyWith(
          _$_DeleteSuccess value, $Res Function(_$_DeleteSuccess) then) =
      __$$_DeleteSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_DeleteSuccessCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_DeleteSuccess>
    implements _$$_DeleteSuccessCopyWith<$Res> {
  __$$_DeleteSuccessCopyWithImpl(
      _$_DeleteSuccess _value, $Res Function(_$_DeleteSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_DeleteSuccess(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DeleteSuccess implements _DeleteSuccess {
  const _$_DeleteSuccess({this.message = 'Movie was deleted'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Notification.deleteSuccess(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteSuccess &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      __$$_DeleteSuccessCopyWithImpl<_$_DeleteSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) saveSuccess,
    required TResult Function(LocalFailure fail) saveError,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(LocalFailure fail) deleteError,
  }) {
    return deleteSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? saveSuccess,
    TResult? Function(LocalFailure fail)? saveError,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(LocalFailure fail)? deleteError,
  }) {
    return deleteSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? saveSuccess,
    TResult Function(LocalFailure fail)? saveError,
    TResult Function(String message)? deleteSuccess,
    TResult Function(LocalFailure fail)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_SaveError value) saveError,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_SaveError value)? saveError,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_SaveError value)? saveError,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteSuccess != null) {
      return deleteSuccess(this);
    }
    return orElse();
  }
}

abstract class _DeleteSuccess implements Notification {
  const factory _DeleteSuccess({final String message}) = _$_DeleteSuccess;

  String get message;
  @JsonKey(ignore: true)
  _$$_DeleteSuccessCopyWith<_$_DeleteSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteErrorCopyWith<$Res> {
  factory _$$_DeleteErrorCopyWith(
          _$_DeleteError value, $Res Function(_$_DeleteError) then) =
      __$$_DeleteErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalFailure fail});
}

/// @nodoc
class __$$_DeleteErrorCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$_DeleteError>
    implements _$$_DeleteErrorCopyWith<$Res> {
  __$$_DeleteErrorCopyWithImpl(
      _$_DeleteError _value, $Res Function(_$_DeleteError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fail = null,
  }) {
    return _then(_$_DeleteError(
      fail: null == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }
}

/// @nodoc

class _$_DeleteError implements _DeleteError {
  const _$_DeleteError({required this.fail});

  @override
  final LocalFailure fail;

  @override
  String toString() {
    return 'Notification.deleteError(fail: $fail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteError &&
            (identical(other.fail, fail) || other.fail == fail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteErrorCopyWith<_$_DeleteError> get copyWith =>
      __$$_DeleteErrorCopyWithImpl<_$_DeleteError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) saveSuccess,
    required TResult Function(LocalFailure fail) saveError,
    required TResult Function(String message) deleteSuccess,
    required TResult Function(LocalFailure fail) deleteError,
  }) {
    return deleteError(fail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? saveSuccess,
    TResult? Function(LocalFailure fail)? saveError,
    TResult? Function(String message)? deleteSuccess,
    TResult? Function(LocalFailure fail)? deleteError,
  }) {
    return deleteError?.call(fail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? saveSuccess,
    TResult Function(LocalFailure fail)? saveError,
    TResult Function(String message)? deleteSuccess,
    TResult Function(LocalFailure fail)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(fail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveSuccess value) saveSuccess,
    required TResult Function(_SaveError value) saveError,
    required TResult Function(_DeleteSuccess value) deleteSuccess,
    required TResult Function(_DeleteError value) deleteError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveSuccess value)? saveSuccess,
    TResult? Function(_SaveError value)? saveError,
    TResult? Function(_DeleteSuccess value)? deleteSuccess,
    TResult? Function(_DeleteError value)? deleteError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveSuccess value)? saveSuccess,
    TResult Function(_SaveError value)? saveError,
    TResult Function(_DeleteSuccess value)? deleteSuccess,
    TResult Function(_DeleteError value)? deleteError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class _DeleteError implements Notification {
  const factory _DeleteError({required final LocalFailure fail}) =
      _$_DeleteError;

  LocalFailure get fail;
  @JsonKey(ignore: true)
  _$$_DeleteErrorCopyWith<_$_DeleteError> get copyWith =>
      throw _privateConstructorUsedError;
}
