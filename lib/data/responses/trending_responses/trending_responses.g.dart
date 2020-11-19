// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TrendingMoviesResponse _$TrendingMoviesResponseFromJson(
    Map<String, dynamic> json) {
  return TrendingMoviesResponse(
    id: json['id'] as int,
    adult: json['adult'] as bool,
    backdropPath: json['backdrop_path'] as String,
    genreIds: (json['genre_ids'] as List)?.map((e) => e as int)?.toList(),
    originalLanguage: json['original_language'] as String,
    originalTitle: json['original_title'] as String,
    overview: json['overview'] as String,
    posterPath: json['poster_path'] as String,
    releaseDate: json['release_date'] as String,
    title: json['title'] as String,
    video: json['video'] as bool,
    voteAverage: (json['vote_average'] as num)?.toDouble(),
    voteCount: json['vote_count'] as int,
    popularity: (json['popularity'] as num)?.toDouble(),
  );
}

Map<String, dynamic> _$TrendingMoviesResponseToJson(
        TrendingMoviesResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'popularity': instance.popularity,
    };

TrendingMovieResponseWithPagination
    _$TrendingMovieResponseWithPaginationFromJson(Map<String, dynamic> json) {
  return TrendingMovieResponseWithPagination(
    page: json['page'] as int,
    results: (json['results'] as List)
        ?.map((e) => e == null
            ? null
            : TrendingMoviesResponse.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    totalPages: json['total_pages'] as int,
    totalResults: json['total_results'] as int,
  );
}

Map<String, dynamic> _$TrendingMovieResponseWithPaginationToJson(
        TrendingMovieResponseWithPagination instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
