// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get movieTitle => throw _privateConstructorUsedError;
  String get movieDescription => throw _privateConstructorUsedError;
  String get movieCover => throw _privateConstructorUsedError;
  String get movieDate => throw _privateConstructorUsedError;
  double get moviePopularity => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {int id,
      String movieTitle,
      String movieDescription,
      String movieCover,
      String movieDate,
      double moviePopularity});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieTitle = null,
    Object? movieDescription = null,
    Object? movieCover = null,
    Object? movieDate = null,
    Object? moviePopularity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: null == movieDescription
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      movieCover: null == movieCover
          ? _value.movieCover
          : movieCover // ignore: cast_nullable_to_non_nullable
              as String,
      movieDate: null == movieDate
          ? _value.movieDate
          : movieDate // ignore: cast_nullable_to_non_nullable
              as String,
      moviePopularity: null == moviePopularity
          ? _value.moviePopularity
          : moviePopularity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String movieTitle,
      String movieDescription,
      String movieCover,
      String movieDate,
      double moviePopularity});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? movieTitle = null,
    Object? movieDescription = null,
    Object? movieCover = null,
    Object? movieDate = null,
    Object? moviePopularity = null,
  }) {
    return _then(_$MovieImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      movieTitle: null == movieTitle
          ? _value.movieTitle
          : movieTitle // ignore: cast_nullable_to_non_nullable
              as String,
      movieDescription: null == movieDescription
          ? _value.movieDescription
          : movieDescription // ignore: cast_nullable_to_non_nullable
              as String,
      movieCover: null == movieCover
          ? _value.movieCover
          : movieCover // ignore: cast_nullable_to_non_nullable
              as String,
      movieDate: null == movieDate
          ? _value.movieDate
          : movieDate // ignore: cast_nullable_to_non_nullable
              as String,
      moviePopularity: null == moviePopularity
          ? _value.moviePopularity
          : moviePopularity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$MovieImpl implements _Movie {
  const _$MovieImpl(
      {required this.id,
      required this.movieTitle,
      required this.movieDescription,
      required this.movieCover,
      required this.movieDate,
      required this.moviePopularity});

  @override
  final int id;
  @override
  final String movieTitle;
  @override
  final String movieDescription;
  @override
  final String movieCover;
  @override
  final String movieDate;
  @override
  final double moviePopularity;

  @override
  String toString() {
    return 'Movie(id: $id, movieTitle: $movieTitle, movieDescription: $movieDescription, movieCover: $movieCover, movieDate: $movieDate, moviePopularity: $moviePopularity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.movieTitle, movieTitle) ||
                other.movieTitle == movieTitle) &&
            (identical(other.movieDescription, movieDescription) ||
                other.movieDescription == movieDescription) &&
            (identical(other.movieCover, movieCover) ||
                other.movieCover == movieCover) &&
            (identical(other.movieDate, movieDate) ||
                other.movieDate == movieDate) &&
            (identical(other.moviePopularity, moviePopularity) ||
                other.moviePopularity == moviePopularity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, movieTitle, movieDescription,
      movieCover, movieDate, moviePopularity);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final int id,
      required final String movieTitle,
      required final String movieDescription,
      required final String movieCover,
      required final String movieDate,
      required final double moviePopularity}) = _$MovieImpl;

  @override
  int get id;
  @override
  String get movieTitle;
  @override
  String get movieDescription;
  @override
  String get movieCover;
  @override
  String get movieDate;
  @override
  double get moviePopularity;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
