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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SaveSuccessImplCopyWith<$Res> {
  factory _$$SaveSuccessImplCopyWith(
          _$SaveSuccessImpl value, $Res Function(_$SaveSuccessImpl) then) =
      __$$SaveSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SaveSuccessImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$SaveSuccessImpl>
    implements _$$SaveSuccessImplCopyWith<$Res> {
  __$$SaveSuccessImplCopyWithImpl(
      _$SaveSuccessImpl _value, $Res Function(_$SaveSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SaveSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveSuccessImpl implements _SaveSuccess {
  const _$SaveSuccessImpl({this.message = 'Movie was saved'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Notification.saveSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveSuccessImplCopyWith<_$SaveSuccessImpl> get copyWith =>
      __$$SaveSuccessImplCopyWithImpl<_$SaveSuccessImpl>(this, _$identity);

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
  const factory _SaveSuccess({final String message}) = _$SaveSuccessImpl;

  String get message;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveSuccessImplCopyWith<_$SaveSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SaveErrorImplCopyWith<$Res> {
  factory _$$SaveErrorImplCopyWith(
          _$SaveErrorImpl value, $Res Function(_$SaveErrorImpl) then) =
      __$$SaveErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalFailure fail});
}

/// @nodoc
class __$$SaveErrorImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$SaveErrorImpl>
    implements _$$SaveErrorImplCopyWith<$Res> {
  __$$SaveErrorImplCopyWithImpl(
      _$SaveErrorImpl _value, $Res Function(_$SaveErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fail = null,
  }) {
    return _then(_$SaveErrorImpl(
      fail: null == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }
}

/// @nodoc

class _$SaveErrorImpl implements _SaveError {
  const _$SaveErrorImpl({required this.fail});

  @override
  final LocalFailure fail;

  @override
  String toString() {
    return 'Notification.saveError(fail: $fail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveErrorImpl &&
            (identical(other.fail, fail) || other.fail == fail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fail);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveErrorImplCopyWith<_$SaveErrorImpl> get copyWith =>
      __$$SaveErrorImplCopyWithImpl<_$SaveErrorImpl>(this, _$identity);

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
  const factory _SaveError({required final LocalFailure fail}) =
      _$SaveErrorImpl;

  LocalFailure get fail;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveErrorImplCopyWith<_$SaveErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteSuccessImplCopyWith<$Res> {
  factory _$$DeleteSuccessImplCopyWith(
          _$DeleteSuccessImpl value, $Res Function(_$DeleteSuccessImpl) then) =
      __$$DeleteSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteSuccessImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$DeleteSuccessImpl>
    implements _$$DeleteSuccessImplCopyWith<$Res> {
  __$$DeleteSuccessImplCopyWithImpl(
      _$DeleteSuccessImpl _value, $Res Function(_$DeleteSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteSuccessImpl implements _DeleteSuccess {
  const _$DeleteSuccessImpl({this.message = 'Movie was deleted'});

  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'Notification.deleteSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      __$$DeleteSuccessImplCopyWithImpl<_$DeleteSuccessImpl>(this, _$identity);

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
  const factory _DeleteSuccess({final String message}) = _$DeleteSuccessImpl;

  String get message;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSuccessImplCopyWith<_$DeleteSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteErrorImplCopyWith<$Res> {
  factory _$$DeleteErrorImplCopyWith(
          _$DeleteErrorImpl value, $Res Function(_$DeleteErrorImpl) then) =
      __$$DeleteErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalFailure fail});
}

/// @nodoc
class __$$DeleteErrorImplCopyWithImpl<$Res>
    extends _$NotificationCopyWithImpl<$Res, _$DeleteErrorImpl>
    implements _$$DeleteErrorImplCopyWith<$Res> {
  __$$DeleteErrorImplCopyWithImpl(
      _$DeleteErrorImpl _value, $Res Function(_$DeleteErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fail = null,
  }) {
    return _then(_$DeleteErrorImpl(
      fail: null == fail
          ? _value.fail
          : fail // ignore: cast_nullable_to_non_nullable
              as LocalFailure,
    ));
  }
}

/// @nodoc

class _$DeleteErrorImpl implements _DeleteError {
  const _$DeleteErrorImpl({required this.fail});

  @override
  final LocalFailure fail;

  @override
  String toString() {
    return 'Notification.deleteError(fail: $fail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteErrorImpl &&
            (identical(other.fail, fail) || other.fail == fail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fail);

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteErrorImplCopyWith<_$DeleteErrorImpl> get copyWith =>
      __$$DeleteErrorImplCopyWithImpl<_$DeleteErrorImpl>(this, _$identity);

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
      _$DeleteErrorImpl;

  LocalFailure get fail;

  /// Create a copy of Notification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteErrorImplCopyWith<_$DeleteErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
