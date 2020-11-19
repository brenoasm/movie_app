// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return Movie(
    id: json['id'] as int,
    adult: json['adult'] as bool,
    backdropPath: json['backdropPath'] as String,
    genreIds: (json['genreIds'] as List)?.map((e) => e as int)?.toList(),
    originalLanguage: json['originalLanguage'] as String,
    originalTitle: json['originalTitle'] as String,
    overview: json['overview'] as String,
    posterPath: json['posterPath'] as String,
    releaseDate: json['releaseDate'] as String,
    title: json['title'] as String,
    video: json['video'] as bool,
    voteAverage: (json['voteAverage'] as num)?.toDouble(),
    voteCount: json['voteCount'] as int,
    popularity: (json['popularity'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'backdropPath': instance.backdropPath,
      'genreIds': instance.genreIds,
      'originalLanguage': instance.originalLanguage,
      'originalTitle': instance.originalTitle,
      'overview': instance.overview,
      'posterPath': instance.posterPath,
      'releaseDate': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'voteAverage': instance.voteAverage,
      'voteCount': instance.voteCount,
      'popularity': instance.popularity,
    };
