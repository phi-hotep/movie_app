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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Movie {
  int get id => throw _privateConstructorUsedError;
  String get movieTitle => throw _privateConstructorUsedError;
  String get movieDescription => throw _privateConstructorUsedError;
  String get movieCover => throw _privateConstructorUsedError;
  String get movieDate => throw _privateConstructorUsedError;
  double get moviePopularity => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
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
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
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
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

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
    return _then(_$_Movie(
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

class _$_Movie implements _Movie {
  const _$_Movie(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Movie &&
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

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);
}

abstract class _Movie implements Movie {
  const factory _Movie(
      {required final int id,
      required final String movieTitle,
      required final String movieDescription,
      required final String movieCover,
      required final String movieDate,
      required final double moviePopularity}) = _$_Movie;

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
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
