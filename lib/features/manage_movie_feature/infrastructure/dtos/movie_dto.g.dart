// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieDto _$$_MovieDtoFromJson(Map<String, dynamic> json) => _$_MovieDto(
      id: json['id'] as int,
      originalTitle: json['original_title'] as String,
      overview: json['overview'] as String,
      posterPath: json['poster_path'] as String,
      releaseDate: json['release_date'] as String,
      popularity: (json['popularity'] as num).toDouble(),
    );

Map<String, dynamic> _$$_MovieDtoToJson(_$_MovieDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'popularity': instance.popularity,
    };
