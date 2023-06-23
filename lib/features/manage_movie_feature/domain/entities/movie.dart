// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required int id,
    required String movieTitle,
    required String movieDescription,
    required String movieCover,
    required String movieDate,
    required double moviePopularity,
  }) = _Movie;
}
